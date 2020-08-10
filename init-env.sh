#!/bin/bash env
export ENV_BESU="-XX:+UseSerialGC","--enable-preview","-Xshare:on","-cp"
export javaagent:/jHiccup.jar=-c 

