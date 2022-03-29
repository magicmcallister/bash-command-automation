#!/bin/bash

ls ~/{folder_to_open}/ | rofi -show -dmenu -theme Monokai -font "Monospace 15" -i | xargs -I_ code {folder_to_open}/_