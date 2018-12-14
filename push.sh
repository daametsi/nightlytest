#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

push_to_nightly() {
  git checkout nightly
  git merge develop
  git push
}

setup_git
push_to_nightly
