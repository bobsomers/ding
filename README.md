# Ding: A text-messaging microwave timer for your shell.

![Productivity](http://imgs.xkcd.com/comics/compiling.png)

Do you run commands that take a long time? Compiles? Test suites? Backup
scripts?

Rather than wasting time wondering when it will finish, go outside and get some
sunshine instead. Take the dog for a walk or play a game of ping-pong while you
wait. Ding will text you when it's done.

Just prepend any shell command with "ding" and you'll receive a text message
notification when the command is finished, with the command you ran and its
exit code. Easy peasy.

## 1. Time Cook

Get a Google Voice account and install the `pygooglevoice` package for Python.
As of the time of this writing, the current version is 0.5 and has a bug. The
authentication URL is set wrong. If you don't have a patched version, use the
shell script in the `pygooglevoice-patch` directory to download, patch, and
install the library.

## 2. Power Level

Make `~/.gvoice` and `~/.dingwho` files in your home directory. The `~/.gvoice`
file contains account settings for authenticating with Google Voice. The
`~/.dingwho` file contains the phone number to text when commands are complete.
See the example files in the `examples` directory for the format.

## 3. Ding!

Put the `ding` script somewhere on your path (I use `~/bin`) and prepend your
long-running command with `ding`. For example:

```shell
$ ding kessel_run --under="12 parsecs"
```

The command will run and the phone listed in `~/.dingwho` will get a text when
it's complete with the exit code and the command that was run. Texts are
truncated to 160 characters so you only get one, regardless of how long the
command might be.

***What will you do with all your newfound time?***

![Winner](http://i.imgur.com/krPqC.gif)

### Parting Notes

Don't forget that if you want to run a command with shell redirection, you're
going to need to quote the whole command so the redirection doesn't get applied
at the ding level (you want it passed through to the shell that ding spawns).
For example:

```shell
$ ding "awesome | grep sauce"
```
