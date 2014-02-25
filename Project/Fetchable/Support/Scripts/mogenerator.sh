#!/bin/sh

#  mogenerator.sh
#  Fetchable
#
#  Created by Ben Chatelain on 2/19/14.
#  Copyright (c) 2014 @phatblat. All rights reserved.
#

PATH=${PATH}:/usr/local/bin:/opt/boxen/homebrew/bin
mogenerator \
    --model "Fetchable/Model/Fetchable.xcdatamodeld/Fetchable.xcdatamodel" \
    --human-dir "Fetchable/Model/Managed Objects/" \
    --machine-dir "Fetchable/Model/Managed Objects/_Generated" \
    --template-var \
    arc=true
