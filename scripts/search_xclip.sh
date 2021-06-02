#!/bin/bash

firefox -new-tab https://www.google.com/search?q=$(xclip -o | tr " \t" "+")
