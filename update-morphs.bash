#!/bin/bash

#assuming that you have the whole apertium tree in your source dir. and you are in khk-kaz directory

python3 ../../trunk/apertium-tools/trim-lexc.py apertium-khk-kaz.khk-kaz.dix ../apertium-kaz/apertium-kaz.kaz.lexc ../apertium-khk/apertium-khk.khk.lexc

cp /tmp/apertium-kaz.kaz.lexc.trimmed apertium-khk-kaz.kaz.lexc
cp /tmp/apertium-khk.khk.lexc.trimmed apertium-khk-kaz.khk.lexc

cp ../apertium-kaz/apertium-kaz.kaz.twol apertium-khk-kaz.kaz.twol
cp ../apertium-kaz/apertium-kaz.kaz.rlx apertium-khk-kaz.khk-kaz.rlx

cp ../apertium-khk/apertium-khk.khk.twol apertium-khk-kaz.khk.twol
cp ../apertium-khk/apertium-khk.khk.rlx apertium-khk-kaz.khk-kaz.rlx

exit 0


