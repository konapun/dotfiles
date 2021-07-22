THEMER_EMPTY_STRING='[____]'

# Replaces all occurrences of a template variable within a file
#   Accepted patterns:
#     {{key}}                Allow value to be substituted for "key"
#     {{!key}}               Remove entire line if no value is substituted for "key"
#     {{key|my_default}}     Use "my_default" if no value is substituted for "key"
#     {{!key|my_default}}    Use "my_default" if no value is substituted for "key" and remove line if no value is substituted
function themer_substitute {
  local key=$1
  local value=$2
  local file=$3

  # if value is empty, its value will be file's and file will be empty so shuffle things around...
  if [[ $file == '' ]]; then
    file=$value
    value=''
  fi

  local pattern="\{\{$key(\|[^}]+)?\}\}" # sed -E 's/\{\{key(\|[^}]+)?\}\}/val/g'
  local kibosh_pattern="\{\{\!$key(\|[^}]+)?\}\}"

  if [[ ! -z $value ]]; then # don't do replacements with empty values or the variables won't be available for cleanup
    if [[ $value == $THEMER_EMPTY_STRING ]]; then # Since shell scripting sucks, if value is '' it'll still be considered null which will break intended functionality. As a lame workaround, use a special value to represent an intended empty string :(
      value=''
    fi

    sed -E -i -- "s&$pattern&$value&g" $file &> /dev/null
    sed -E -i -- "s&$kibosh_pattern&$value&g" $file &> /dev/null
  fi
}

# Ensures there are no unsubstituted template variables within a file (to be called after all substituions have taken place)
function themer_validate {
  local file=$1

  local count=$(grep -c "{{.*}}" $file)
  if (( $count > 0 )); then
    throw "Template validation error: encountered unreplaced template string"
  fi
}

# Apply any default values and remove all unreplaced template variables
function themer_cleanup {
  local file=$1

  sed -i -- '/{{!.*}}/d' $file &> /dev/null # delete whole line with unsubstituted {{!variable}}
  sed -i -- -E -e 's/\{\{[^|]+\|//' -e 's/\}\}//' $file &> /dev/null # apply default values for unsubstituted variables
  sed -i -- 's/{{.*}}//g' $file &> /dev/null # delete unsubstituted variable {{variable}}

  # remove temp file
  rm "$file--"
}

# TODO: Sanitize strings before replace
function _themer_make_safe_value {
  local value=$1
  local safe_value=$(printf '%s\n' "$value" | sed -e 's/[\/&]/\\&/g')

  echo $safe_value
}
