#!/bin/sh

echo "📘 Starting Docs in $DOCS_ENV mode..."

if [ "$DOCS_ENV" = "prod" ]; then
  echo "🚀 Building and starting Next.js in production..."
  pnpm build && pnpm start
else
  echo "🧩 Running Next.js dev server..."
  pnpm dev
fi
