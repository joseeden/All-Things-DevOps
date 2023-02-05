
# Top 10 Git Commands


## Git Stash 

Git stash is a tool for temporarily stashing any changes to modified files. Stash allows you to hide the changes in a codebase for as long as needed. It's similar to commit in that once you stash you'll be in a clean Git directory, meaning there won't be any modified files. However, it differs from commits in that stashes are only temporary. Git stash pop does the reverse, restoring your changes.

Git blame is a diagnostic tool that helps with investigation inside your codebase.

Among other reasons, stash and pop are useful tools if you want the ability to make sweeping changes to a codebase while preserving the state of some of your changes.

## Git Blame 


```bash
git blame README.MD 
```
```bash
ca-labs:~/example-git-repo$ git blame README.MD
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  1) Static Website Example
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  2) ----------------------
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  3) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  4) To be used with Cloud Academy labs.
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  5) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  6) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  7) License
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  8) ----------------------
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700  9) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 10) This static website is based on the Dimension template by [HTML5 UP](https://html5up.net/)
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 11) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 12) Creative Commons License
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 13) All of the site templates I create for [HTML5 UP](https://html5up.net/) are licensed under the Creative Commons Attribution 3.0 License, which means you can:
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 14)  - Use them for personal stuff
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 15)  - Use them for commercial stuff
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 16)  - Change them however you like
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 17) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 18) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 19) ... all for free, yo. In exchange, just give HTML5 UP credit for the design and tell your friends about it :)
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 20) 
^ae05432 (Logan Rakai 2019-11-19 15:31:36 -0700 21) More info [here](https://html5up.net/license). 
```

The output from a git blame command will show each line of a file as a row. From left to right, each row will include:

* A commit ID
* The name of the committer
* The timestamp of the change made
* The content of the line

Developers use this command, among other reasons, if they need to know who made a certain change or how long ago the change was made.

## Git Diff 

As you've learned in previous labs, the branch command allows you to view, create and manage Git branches. You've also learned about the checkout command, which allows you to perform several functions including checking out branches and reverting modified files to unmodified ones.

Similarly, the reset command is useful when you need to revert a branch to a previous commit. All of these commands are useful and common enough to make it to the top 10 list for this Lab. One more command that qualifies is the diff command, which in its most basic form allows you to view the differences in tracked files between commits.

```bash
$ git diff
diff --git a/index.html b/index.html
index 69ab9f0..256eea0 100644
--- a/index.html
+++ b/index.html
@@ -358,3 +358,4 @@ print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
 
        </body>
 </html>
```

As you can see, the diff command outputs a per-file log of any tracked changes since your last commit. Notice the green "new line" text matching the change you made in the last Lab Step.

## Git Reset 

```bash
git reset --hard HEAD~1
```
```bash
HEAD is now at 2dca417 Merge pull request #1 from cloudacademy/feature/update-title 
```

## Git Log, Show, and Tag 

In past labs, you've used the git log command heavily. it's one of the most invaluable commands in your repertoire. Two more you may not be familiar with are show and tag.

The show command can show various types of objects in Git, the default being the details for the last commit. When you use the show command for a specific commit you can see its commit details similar to the log command in addition to its changed content similar to a diff command, making git show an excellent option for quickly gathering information about a commit.

The tag command allows you to create a tag, which is a Git object that points to a commit. Tags are useful for easy tracking of versions of your codebase and are usually used for marked version releases (like v1.0.0).

```bash
$ git log
commit 2dca4178576c12ea60c6a8417ea15763b964f3d6 (HEAD -> new_branch, origin/master, origin/HEAD, master)
Merge: ae05432 f2d9c95
Author: Matt Martinez <matthewmartinez1003@gmail.com>
Date:   Wed Nov 20 16:50:24 2019 -0600

    Merge pull request #1 from cloudacademy/feature/update-title
    
    update title

commit f2d9c95f623c8d69193680732b69c21e50828914 (origin/feature/update-title)
Author: Matthew Martinez <matthewmartinez1003@gmail.com>
Date:   Wed Nov 20 16:40:40 2019 -0600

    update title

commit ae05432ea07eaf8e2d5232b6a40345f1bb33c9ac
Author: Logan Rakai <lmrakai@gmail.com>
Date:   Tue Nov 19 15:31:36 2019 -0700

    Initial commit 
```

**git show**

```bash
git show 
```
```bash
commit 2dca4178576c12ea60c6a8417ea15763b964f3d6 (HEAD -> new_branch, origin/master, origin/HEAD, master)
Merge: ae05432 f2d9c95
Author: Matt Martinez <matthewmartinez1003@gmail.com>
Date:   Wed Nov 20 16:50:24 2019 -0600

    Merge pull request #1 from cloudacademy/feature/update-title
    
    update title 
```

By default, the show command shows output similar to git log, but with only the most recent commit included. It also shows any content changes included in that commit, similar to the diff function. You can also include a commit ID as part of the command to see details about a specific commit.

For example, the command git show ae05432ea07eaf8e2d5232b6a40345f1bb33c9ac will show commit details and content changes for the commit with the id ae05432ea07eaf8e2d5232b6a40345f1bb33c9ac.

```bash
$ git tag 0.1.0
ca-labs:~/example-git-repo$ git log --oneline
2dca417 (HEAD -> new_branch, tag: 0.1.0, origin/master, origin/HEAD, master) Merge pull request #1 from cloudacademy/feature/update-title
f2d9c95 (origin/feature/update-title) update title
ae05432 Initial commit 
```

As you can see, git tag will apply a tag to your current commit. Similar to how branches are objects that point to specific commits, tags also point to a commit. However, tags can be thought of as branches that never change.

Unlike branches, which will point to a new commit any time a commit is made while checked out to that branch, a tag will always point to the same commit unless intentionally modified, making tags excellent at tracking codebase versions.

One more note about tags is that similar to branches, you can specify tags when doing things like checking out, pushing and pulling. The benefit to doing so is that you know you're managing a specific version of the codebase.