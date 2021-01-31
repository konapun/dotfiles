THEMER_EMPTY_STRING='[____]'

# Replaces all occurrences of a template variable within a file
function themer_substitute {
  local key=$1
  local value=$2
  local file=$3

  # if value is empty, its value will be file's and file will be empty so shuffle things around...
  if [[ $file == '' ]]; then
    file=$value
    value=''
  fi


  local pattern="{{$key}}"
  local kibosh_pattern="{{!$key}}"

  if [[ ! -z $value ]]; then # don't do replacements with empty values or the variables won't be available for cleanup
    if [[ $value == $THEMER_EMPTY_STRING ]]; then # Since shell scripting sucks, if value is '' it'll still be considered null which will break intended functionality. As a lame workaround, use a special value to represent an intended empty string :(
      value=''
    fi

    sed -i -- "s&$pattern&$value&g" $file &> /dev/null
    sed -i -- "s&$kibosh_pattern&$value&g" $file &> /dev/null
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

# Remove all unreplaced template variables
function themer_cleanup {
  local file=$1

  sed --in-place '/{{!.*}}/d' $file &> /dev/null # delete whole line with unsubstituted {{!variable}}
  sed -i -- 's/{{.*}}//g' $file &> /dev/null # delete unsubstituted variable {{variable}}
}
