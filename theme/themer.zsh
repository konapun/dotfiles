# Replaces all occurrences of a template variable within a file
function themer_substitute {
  local key=$1
  local value=$2
  local file=$3
  local pattern="{{$key}}"
  local kibosh_pattern="{{!$key}}"

  sed -i -- "s/$pattern/$value/g" $file &> /dev/null
  sed -i -- "s/$kibosh_pattern/$value/g" $file &> /dev/null
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
