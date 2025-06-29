
#!/bin/bash

# Check for Homebrew updates
BREW_OUTDATED=$(brew outdated | wc -l | tr -d ' ')

if [ "$BREW_OUTDATED" -gt 0 ]; then
  sketchybar --set $NAME label="$BREW_OUTDATED" \
                         label.drawing=on
else
  sketchybar --set $NAME label.drawing=off
fi
