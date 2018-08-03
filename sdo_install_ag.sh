#!/bin/bash -ex

sudo apt-get install silversearcher-ag
echo alias ag='ag --pager "less -RFX" --depth=100'