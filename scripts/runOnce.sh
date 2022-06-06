grep -RiIl 'app-template-ui' . --exclude ./node_modules | xargs sed -i '' -e 's/app-template-ui/${repo_name}/g'
