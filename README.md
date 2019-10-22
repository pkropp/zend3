Zend Framework 3 on docker
=============================

no composer installation needed locally (composer docker container used)

Requirements
------------

* Makefile (better use a plugin for Visual Studio Code or editor of your choice to keep tabs)
* MacOS or Linux (Windows is not that well supported, but you can give it a try)
* Git
* Docker
* docker-compose

```bash
$ git clone https://github.com/pkropp/zend3
```

```bash
$ cd zend3
```

```bash
$ make zf3
```

There will come up several questions from Zend Framework 3 install process

first answer with no (you want more than just a basic version)


Take care leaving out the following, because otherwise the project has problems to run

    Would you like to install testing support? y/N
n

    Would you like to install MVC testing tools for testing support? y/N
n

Most other options are useful for getting into Zend 3 so answer most with y


After that easy yes answers there are questions with options 0, 1 and 2
Keep answering 1 and you are good to go.

Do you want to remove the existing VCS (.git, .svn..) history? [Y,n]? y

After installation (only in normal process we have different naming and do not use the given docker-compose)

```bash
$ cd skeleton-application
```
and
```bash
$ docker-compose up -d --build
```

open

localhost:8080

For shutting down and get back running just use
shutdown
```bash
$ docker-compose down
```
start up again
```bash
$ docker-compose up -d
```

Feedback philipp.kropp@gmail.com