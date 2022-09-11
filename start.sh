#!/bin/bash

orig_args=$@
for i in "$@"; do
  echo $i
  case $i in
    -b=*|--build=*)
      build_number="${i#*=}"
      echo "Build Number $build_number" 
      ;;
  esac
  shift
done

./next.sh $orig_args