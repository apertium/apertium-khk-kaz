#!/bin/bash

#assuming that you have the whole apertium tree in your source dir. and you are in khk-kaz directory

python3 ../../trunk/apertium-tools/trim-lexc.py apertium-khk-kaz.khk-kaz.dix ../apertium-khk/apertium-khk.khk.lexc ../apertium-kaz/apertium-kaz.kaz.lexc

cp /tmp/apertium-kaz.kaz.lexc.trimmed apertium-khk-kaz.kaz.lexc
cp /tmp/apertium-khk.khk.lexc.trimmed apertium-khk-kaz.khk.lexc

DIFF=$(diff ../apertium-kaz/apertium-kaz.kaz.twol apertium-khk-kaz.kaz.twol)
if [ "$DIFF" != "" ]; then
	cp ../apertium-kaz/apertium-kaz.kaz.twol apertium-khk-kaz.kaz.twol
fi;
cp ../apertium-kaz/apertium-kaz.kaz.rlx apertium-khk-kaz.khk-kaz.rlx

DIFF=$(diff ../apertium-khk/apertium-khk.khk.twol apertium-khk-kaz.khk.twol)
if [ "$DIFF" != "" ]; then
	cp ../apertium-khk/apertium-khk.khk.twol apertium-khk-kaz.khk.twol
fi;
cp ../apertium-khk/apertium-khk.khk.rlx apertium-khk-kaz.khk-kaz.rlx

exit 0


