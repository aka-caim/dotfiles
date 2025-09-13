#!/bin/bash

artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

if [ -n "$artist" ] || [ -n "$title" ]; then
  echo " ▶ $artist - $title"
else
  echo ""
fi
