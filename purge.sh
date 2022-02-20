#!/bin/bash

PREFIX="/npm/@cshingleton/webflow-alpinejs@2"

for file in `find dist/ -type f`
do
  FILES="$FILES\"$PREFIX/$file\", "
done

FILES="[${FILES%??}]"

set -x

http post https://purge.jsdelivr.net path:="$FILES"
