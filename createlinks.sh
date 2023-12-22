#!/bin/bash

# Everything at once ( symlinks look ugly )
# find . -mindepth 1 -maxdepth 2 -not -regex ".*git.*" -not -regex ".*\(createlinks.sh\|README.md\).*" | xargs -I _ ln -vsf $(pwd)/_ ~/_

#loose files
find ./ -mindepth 1 -maxdepth 1 -type f -not -name ".gitmodules" -not -name "createlinks.sh" -not -name "README.md" -printf "%f\n" | xargs -I _ ln -vsf $(pwd)/_ ~/_

#config dirs
find ./.config -mindepth 1 -maxdepth 1 -type d -printf "%f\n" | xargs -I _ ln -vsf $(pwd)/.config/_ ~/.config/_
