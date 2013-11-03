#!/bin/bash

# Assuming that you have the whole apertium tree in your source dir and you are in kaz-khk directory.

# You have to compile apertium-kaz and apertium-khk first.

cp ../../languages/apertium-kaz/kaz.automorf.att.gz apertium-khk-kaz.kaz-khk.LR.att.gz
cp ../../languages/apertium-kaz/kaz.autogen.att.gz apertium-khk-kaz.khk-kaz.RL.att.gz
cp ../../incubator/apertium-khk/khk.automorf.att.gz apertium-khk-kaz.khk-kaz.LR.att.gz
cp ../../incubator/apertium-khk/khk.autogen.att.gz apertium-khk-kaz.kaz-khk.RL.att.gz

DIFF=$(diff ../../languages/apertium-kaz/apertium-kaz.kaz.rlx apertium-khk-kaz.kaz-khk.rlx)
if [ "$DIFF" != "" ]; then
        cp ../../languages/apertium-kaz/apertium-kaz.kaz.rlx apertium-khk-kaz.kaz-khk.rlx
fi;

DIFF=$(diff ../../incubator/apertium-khk/apertium-khk.khk.rlx apertium-khk-kaz.khk-kaz.rlx)
if [ "$DIFF" != "" ]; then
        cp ../../incubator/apertium-khk/apertium-khk.khk.rlx apertium-khk-kaz.khk-kaz.rlx
fi;

exit 0


