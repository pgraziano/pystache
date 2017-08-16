#!/usr/bin/env bash
set -xe

TMPDIR=`mktemp -d`
echo $TMPDIR
virtualenv $TMPDIR/venv
. $TMPDIR/venv/bin/activate
which python
pip install .
PYTHONPATH=. python -m pystache.commands.test
