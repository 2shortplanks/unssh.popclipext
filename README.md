unssh
=====

A simple popclip extension to allow you to remove an offending key from your .ssh/known_hosts file

You've all see this error after you've reinstalled a server:

	Mark@travis:~$ ssh devserver.local
	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
	Someone could be eavesdropping on you right now (man-in-the-middle attack)!
	It is also possible that a host key has just been changed.
	The fingerprint for the RSA key sent by the remote host is
	31:5d:f2:7e:3f:dd:1e:74:61:f3:1c:03:ff:ee:c2:4a.
	Please contact your system administrator.
	Add correct host key in /Users/Mark/.ssh/known_hosts to get rid of this message.
	Offending RSA key in /Users/Mark/.ssh/known_hosts:32
	RSA host key for devserver.local has changed and you have requested strict checking.
	Host key verification failed.

With this extension highlight the line

	Offending RSA key in /Users/Mark/.ssh/known_hosts:32

And click on `unssh` in the popclip popup and *whammo* the offending line is gone.

(this is a context aware popclip extension, only showing when it sees a "key in blah:123" line)

Installation
------------

   * Install Popclip
   * git clone this
   * Double-click it
   * Confirm that you want to install the untrusted extension

Author
------

Written by Mark Fowler

   * http://twoshortplanks.com
   * http://github.com/2shortplanks/unssh.popclipext

Bugs
----

   * none known, but probably a zillion.  Don't blame me if it eats your computer.

Further bugs, raise an issue on github.
