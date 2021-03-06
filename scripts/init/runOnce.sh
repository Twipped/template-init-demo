#!/bin/sh -e

if [[ "$OSTYPE" == "darwin"* ]]; then
  grep -RiIl 'app-template-ui' . --exclude-dir ./node_modules | xargs sed -i '' -e "s/app-template-ui/${repo_name}/g"
  grep -RiIl 'APP_DESCRIPTION_GOES_HERE' . --exclude-dir ./node_modules | xargs sed -i '' -e "s/APP_DESCRIPTION_GOES_HERE/${repo_description}/g"
else
  grep -RiIl 'app-template-ui' . --exclude-dir ./node_modules | xargs sed -i -e "s/app-template-ui/${repo_name}/g"
  grep -RiIl 'APP_DESCRIPTION_GOES_HERE' . --exclude-dir ./node_modules | xargs sed -i -e "s/APP_DESCRIPTION_GOES_HERE/${repo_description}/g"
fi