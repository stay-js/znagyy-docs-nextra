#!/bin/sh

echo "Starting Docs in $DOCS_ENV mode..."

if [ "$DOCS_ENV" = "prod" ]; then
  echo "Building and starting Next.js production server..."
  pnpm build && pnpm start
else
  echo "Starting Next.js dev server..."
  pnpm dev
fi
