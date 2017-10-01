## This is hw #1. 

(A) Create two branches, both from your master branch, with names test1 and test2.  

```  
$ git branch test1  
$ git branch test2  

$ git branch  
* master  
  test1  
  test2  

```  


(B) Now checkout the test1 branch and create a new text file named test.txt in the homework/1/ directory of this branch.  

```
$ git checkout test1  
vim tests.txt  
```  

(C) Inside test.txt in test1 branch write this message: This is some example text for branch test1, and save it.  

*This is some example text for branch test1*  

(D) Now stage and commit test.txt file to branch test1.

```  
$ git add test.txt  
warning: LF will be replaced by CRLF in homework/1/test.txt.  
This file will have its originial line endings in your working directory.  
$ git commit  
 [test1 829dfb0] commit tests  
 1 file changed, 1 insertion(+)  
 create mode 100644 homework/1/test.txt  
 ```  
 
 (E) Checkout the branch test2. Do you still see test.txt that you just created in your homework/1/ directory? You can search for it by the bash command ls. Explain why you see/don’t see the file in your working directory anymore.  
 
 ```  
 $ git checkout test2  
 Switched to branch 'test2'  
 ```  
 No, I don't see test.txt in my homework/1/ directory, since I created the file in branch test1.  
 
(F) Create a new text file named test.txt in the homework/1/ directory of this branch as well, and add This is some example text for branch test2 to its content.  

```  
vim test.txt  
```  
*This is some example text for branch test2 to its content.*  


(G) Now try to checkout test1. What error/warning message do you get? Fix the source of error and then checkout test1 branch.  

Error:  
```  
$ git checkout test1  
error: The following untracked working tree files would be overwritten by checkout:  
        homework/1/test.txt  
Please move or remove them before you switch branches.  
Aborting  
```  
Fix:  
```  
$ git add test.txt  
warning: LF will be replaced by CRLF in homework/1/test.txt.  
The file will have its original line endings in your working directory.  

$ git commit  
[test2 d5dc0d6] commit test to test2 branch  
 1 file changed, 1 insertion(+)  
 create mode 100644 homework/1/test.txt  
 
 $ git checkout test1  
 ```   
 
 (H) Now merge the content of test1 with master branch. (Hint: Note from which branch you doing this merge!)  

```  
$ git checkout master  
Switched to branch 'master'  

$ git merge test1  
Updating 02048bf..829dfb0  
Fast-forward  
 homework/1/test.txt | 1 +  
 1 file changed, 1 insertion(+)  
 create mode 100644 homework/1/test.txt  
 ```  
 
 (I) Now what do you see as the content of master branch? (Hint: Use ls bash command, to list the files in the working directory.)  
 
 ```  
 $ ls  
readme.md  test.txt  
```  
I see my readme file as well as my file from the branch test1.  


(J) Now merge the content of test2 with master branch. What error/warning message do you get? Why does this error arise?  

```  
$ git merge test2  
Auto-merging homework/1/tests.txt  
CONFLICT (add/add): Merge conflict in homework/1/test.txt  
Automatic merge failed; fix conflicts and then commit the result.  
```  
This error arises because I already merged the same test file to the master from the test1 branch.  

(K) Now chekcout test2. What error/warning message do you get?  

```  
$ git checkout test2  
error: you need to resolve your current index first  
homework/1/test.txt: needs merge  
```  

(L) Run the Git command git status. Why does such a conflict exist, as mentioned in git status output?  

```  
$ git status  
On branch master  
Your branch is ahead of 'origin/master' by 1 commit.  
  (use "git push" to publish your local commits)  

You have unmerged paths.  
  (fix conflicts and run "git commit")  
  (use "git merge --abort" to abort the merge)  

Unmerged paths:  
  (use "git add <file>..." to mark resolution)  

        both added:      test.txt  

no changes added to commit (use "git add" and/or "git commit -a")  


```  
A conflict exists because test.txt was added to both branches (unmerged paths), and also because the test2 branch and the master branch have diverged.  

(M) At this stage, you have two options: Either 1. stage and commit the combined conflicting test.txt file to Git repository (but this is not recommended), or, 2. open the file test.txt using vim editor on the command line and reslve the conflict by editing the content of the file to only this sentence: . Then save and quit *vim.  

```  
$ cat test.txt  
<<<<<<< HEAD  
This is some example text for branch test1  
=======  
This is some example text for branch test2  
>>>>>>> test2  

$ git status  
On branch master  
Your branch is ahead of 'origin/master' by 1 commit.  
  (use "git push" to publish your local commits)  

You have unmerged paths.  
  (fix conflicts and run "git commit")  
  (use "git merge --abort" to abort the merge)  

Unmerged paths:  
  (use "git add <file>..." to mark resolution)  

        both added:      test.txt  

no changes added to commit (use "git add" and/or "git commit -a")  

$ git add test.txt  

$ git commit -m"adding the test.txt resolution file"  
[master 992a2ad] adding the test.txt resolution file  

```  

(N) Now, run git status, then stage and commit your conflict-resolved file. Then checkout test2 branch.  

```  
$ git status  
On branch master  
Your branch is ahead of 'origin/master' by 3 commits.  
  (use "git push" to publish your local commits)  

nothing to commit, working tree clean  


$ git checkout test2  
Switched to branch 'test2'  
```  

(O) Now, try deleting branch test1, while on branch test2. What error/warning message do you get?  

```  
$ git branch -d test1  
error: The branch 'test1' is not fully merged.  
If you are sure you want to delete it, run 'git branch -D test1'.  
```  

(P) Now, switch back to master branch. Now, try deleting branch test1, while on master branch. What message do you get from Git? List all the existing branches using git branch command.  

Message:  
```  
$ git branch -d test1  
Deleted branch test1 (was 829dfb0).  
```  
List:  

```  
$ git branch  
* master  
  test2  
```  

(Q) Why is there such a difference in Git messages between when you tried deleting test1 branch from test2 branch, and when you tried deleting test1 branch from master branch?  

There is a difference because test1 and test2 are two seperate branches which are not merged together, whereas test1 is within the master branch and has already been fully merged to master.  

(R) Now checkout test2 branch. While on test2, try to delete branch test2. What error/message do you get?  

```  
$ git checkout test2  
Switched to branch 'test2'  

$ git branch -d test2  
error: Cannot delete branch 'test2' checked out at 'C:/git/ICP2017F'  
```  

(S) Switch back to master and delete test2 branch. List all your project branches by the appropriate Git command.  

```  
$ git checkout master  
Switched to branch 'master'  

$ git branch -d test2  
Deleted branch test2 (was d5dc0d6).  

$ git branch  
* master  
```  

(T) Stage and commit all the changes (including the file test.txt) to your project’s master branch. Now push it all to the remote repository by Monday, September 18 2017, 9:00 a.m. CDT.  

```  
$ git add --all  

$ git commit  
On branch master  
Your branch is ahead of 'origin/master' by 3 commits.  
  (use "git push" to publish your local commits)  

nothing to commit, working tree clean  

$ git push --all  
Counting objects: 15, done.  
Delta compression using up to 4 threads.  
Compressing objects: 100% (10/10), done.  
Writing objects: 100% (15/15), 1.43 KiB | 731.00 KiB/s, done.  
Total 15 (delta 1), reused 0 (delta 0)  
remote: Resolving deltas: 100% (1/1), done.  
To https://github.com/elm2733/ICP2017F  
   175b8c6..992a2ad  master -> master  

 ```   
