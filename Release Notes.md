Release Notes
=============

## v1.0.0 Mar 14th, 2013
* Complete overhaul to get ready for more features.

## v0.0.3 Oct 13th, 2012
* Made caching relational to the PID of the shell.

If you are upgrading it is recomended that you run `rm -Rf ~/.kcd && kcd --install`
Otherwise it won't update the shell extension to sent the PID. The script will still work but the cache won't be namespaced.

Added to todo list add auto upgrading of shell extension.