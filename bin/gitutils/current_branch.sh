#!/bin/bash

#git name-rev --name-only head
git branch | grep ^* | sed 's/^* //g'

