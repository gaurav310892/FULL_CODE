#!/bin/bash

#reusing the old scripts output to format via sed
source Triangles.sh | sed "s/The area of triangle with base/Base/g ; s/and height/Height/g ; s/is/Area/g" 
