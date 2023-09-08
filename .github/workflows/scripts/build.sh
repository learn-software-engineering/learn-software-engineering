#!/usr/bin/env bash

# Environment variables
if [[ -z "${ENV}" ]]; then
    echo "ENV should be set (development|production)"
    exit 1
else
    echo "Building website for $ENV"
fi

# For maximum backward compatibility with Hugo modules
HUGO_ENVIRONMENT=$ENV
HUGO_ENV=$ENV

# Build site
hugo --gc --minify --noBuildLock --enableGitInfo \
  --printPathWarnings --printI18nWarnings \
  --printMemoryUsage --printUnusedTemplates \
  --templateMetrics --templateMetricsHints \
  --environment $ENV

# Avoid GitHub Jekyll processing
touch public/.nojekyll

# Add CNAME config if it is production
if [ $ENV == "production" ]; then
  echo 'learn-software.com' > public/CNAME
fi
