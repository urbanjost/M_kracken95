# M_kracken95

A module that provides the Fortran 95 version of the kracken(3f)
procedure (and related routines) for command line parsing. See the
[kracken documentation](https://urbanjost.github.io/M_kracken95/krackenhelp.html) for a
full description.

## Which version of kracken(3f) is this?

There are multiple versions of the kracken(3f) routine dating back
to the late 1980s that conform to various Fortran standards. This is
the one that adheres to the Fortran 95 Standard except for the use of
the routines command_argument_count(3f) and get_command_argument(3f),
which are part of Fortran 2003 (Fortran 95 has no standard intrinsic
for reading command line arguments but the vast majority of compilers
have some routine for doing so as an extension).

The main disadvantage of this version versus f2003+ versions is that
constant values are used to specify the maxiumum number of parameters and
the length of the parameters (if you know you have the f2003+ routines
for getting command arguments this can be easily changed so that you
scan the argument lengths in the first pass and then allocate them and
use them in the second pass).

But since newer versions already exist that take advantage of Fortran
2003 this version is considered frozen. Since it is still requested it
will remain available as-is.

## If you are having problems

The routine GET_COMMAND_ARGUMENTS() is the only one that uses non-f95
standard routines to read from the command line. If you do not have a
compiler supports these f2003 procedures you may have to change that
procedure to make calls to the equivalent common extensions GETARGS()
and IARGC(). Note that as of this date it is very likely you can get
a GET_COMMAND_ARGUMENT() look-alike from the free F2KCLI package from
WINTERACTER if your compiler does not support it.

You may note that the command parsing rules are not identical to Unix,
although very similar. This is intentional so that quotes are rarely
needed when entering commands and so negative values can be entered
without quoting. The main differences are there is no way to terminate
a keyword except by starting a new keyword; and the default keyword
-oo described later is implied after the verb; and you cannot combine
keywords (-ir is not equivalent to -i -r, which is sometimes allowed on
Unix commands). You may find the way to include a literal double-quote
character (") as part of an input value is the most unlike Unix (*Hint*:
Double the double-quote. See code comments for details).
