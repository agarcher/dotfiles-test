#!/bin/bash
brew install macvim
brew install the_silver_searcher

# Caps Lock > ESC
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}'

# Link Files
ln -fs $PWD/.vimrc ~/.vimrc
