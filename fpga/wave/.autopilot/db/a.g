#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dorin/wave2/wave/.autopilot/db/a.g.bc ${1+"$@"}
