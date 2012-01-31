#!/bin/sh

git filter-branch -f --env-filter '

in_email=""
out_email=""
out_name=""

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = $in_email ]
then
    cn=$out_name
    cm=$out_email
fi
if [ "$GIT_AUTHOR_EMAIL" = $in_email ]
then
    an=$out_name
    am=$out_email
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
