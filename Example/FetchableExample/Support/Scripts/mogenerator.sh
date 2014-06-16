#!/bin/sh

#  mogenerator.sh
#  Fetchable
#
#  Created by Ben Chatelain on 2/19/14.
#  Copyright (c) 2014 Ben Chatelain
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#  THE SOFTWARE.
#

PATH=${PATH}:/usr/local/bin:/opt/boxen/homebrew/bin
mogenerator \
    --model "${PROJECT_NAME}/Model/Fetchable.xcdatamodeld/Fetchable.xcdatamodel" \
    --human-dir "${PROJECT_NAME}/Model/Managed Objects/" \
    --machine-dir "${PROJECT_NAME}/Model/Managed Objects/_Generated" \
    --template-var \
    arc=true
