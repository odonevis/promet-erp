#!/bin/bash
Version=$(sed 's/\r//g' ../source/base/version.inc).$(sed 's/\r//g' ../source/base/revision.inc)
Version=$(echo $Version | sed 's/\n//g');

chmod 644 output/*
scp output/*$Version_*.dmg autoupload@ullihome.de:promet_upload_target
