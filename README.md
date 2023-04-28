## project-foo-transfer

An experimental project to examine how to share code snippets among team members, using Project Foo as an example.

The idea is to have a repository of shared files, with convenient command-line scripts. One potential advantage of this over gists is that the corpus is searchable (e.g. with the `find` command).

## To share a file

* one-time only: edit `./share.sh`, replace `WHO_AM_I` with your username
- assume we are user `mozart`
* to use: 
- `./share.sh Example.java` 
- `git commit -m "message here"`
- `git push origin main`
* what it does:
- creates `./mozart/2023.04.28-06.00.00/Example.java` and opens editor 
- then `git add ./mozart/2023.04.28-06.00.00/Example.java` and `git status`

## To get a file from someone

* assume we are another user who wants `mozart`'s most recent share 
* to use:
- `./list_for_person.sh mozart`
* what it does:
- `git pull origin main`
- finds the most recent file for `mozart` and displays it on the terminal 

