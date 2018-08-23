#!/bin/bash

git config --global --bool --unset-all diff.renames true
git config --global --bool --unset-all diff.copies true
git config --global --remove-section diff

