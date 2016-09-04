#!/bin/sh

#This script is intended for launch on *nix machines

#-Xmx4000m indicates 4000 mb of memory, adjust number up or down as needed
#Script must be in the same directory as TBtools.jar
#Add the flag -Ddevelopment = true to use features still in development
prefix=`dirname $(readlink $0 || echo $0)`
exec java -Xmx4000m \
	-Dapple.laf.useScreenMenuBar=true \
	-Djava.net.preferIPv4Stack=true \
	-jar "$prefix"/TBtools_v0.396.jar "$@"
