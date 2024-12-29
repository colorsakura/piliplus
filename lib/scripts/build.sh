#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  build_time=$(date -u -v+8H +"%Y-%m-%d %H:%M:%S")
else
  build_time=$(date -u +"%Y-%m-%d %H:%M:%S" -d "+8 hours")
fi

commit_hash=$(git rev-parse HEAD)

cat <<EOL > lib/build_config.dart
class BuildConfig {
  static const String buildTime = '$build_time';
  static const String commitHash = '$commit_hash';
}
EOL
