# Git archive

A simple bash script which batch "archives" a list of branches in your repository.
Given a list of branches, it tags them, prepending `archive/` to their original name, and then deletes the branches.
This ensures your `git branch` output is clean, without losing the work in those branches.

## Instructions

1. Place the script in your repository,
1. Put the list of branches to be archived into a file, say `listofbranches.txt`,
1. Run the script with your file as the argument: `./archivescript.sh listofbranches.txt` (if the script doesn't work, run `chmod 755 archive.sh` to change its permissions).

That's it, your branches are now "archived".

## How do I access/resurect my archived branches?

Branches are converted to tags with `archive/` prepended.
Given an archived branch `mybranch` you can either check it out running `git checkout archive/mybranch` (which will put you in the "detached HEAD" state).
If you would like to "dearchive" the branch, run `git checkout -b mybranch archive/mybranch`.
Come to think of it, I should probably write a script for that too.
