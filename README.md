# Seaport

## About

This releases our open source repositories to their appropriate public repositories.

For example, while `screenplay-cli` is developed in `monologue/screenplay-cli` we still open source a version at https://github.com/screenplaydev/screenplay-cli .

We mirror the code by copying over the files to a version of the repo and then pushing it.

## Design Decisions

When this was first developed, Tomas spent a half day investigating if `git subtree push` would be possible. The advantage of this is that we would retain our history and possibly accept external contributions (even merging them back to our history).

Some early attempts included:

```
git push git@github.com:screenplaydev/xcodejs.git `git subtree split --prefix lib/xcodejs master`:master --force
```

And

```
git subtree push --prefix=lib/xcodejs git@github.com:screenplaydev/xcodejs.git master
```

Relevant docs:

- https://github.com/git/git/blob/master/contrib/subtree/git-subtree.txt#L178
- https://gist.github.com/tduarte/eac064b4778711b116bb827f8c9bef7b#gistcomment-2823366 (SUPER HELPFUL)

The issue we ran into (and couldn't get around) was that subtree split wouldn't always create a minimal history; for example `git subtree split --prefix lib/xcodejs 32980569` includes a FAIRLY extensive file history, including commits (AND GIT DIFFs) that we don't want to publically release in git history. The safest way to get around this would be to put it in an orphan branch and then copy over the files, but that loses the advantages we wanted.

For that reason, we chose to go with synthetically copying files over via this. Which may also allow us to automatically patch file paths / etc.

In the future, we may choose to re-evaluate this (esp if we want to start supporting outside PRs, we have enough historical datapoints to know we won't want to transform any code files, or it becomes more commonplace to use git subtree for this usage).
