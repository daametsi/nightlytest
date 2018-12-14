#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

push_to_nightly() {
  git checkout origin/nightly
  git merge origin/develop
  git push origin/nightly
}

setup_git
push_to_nightly
