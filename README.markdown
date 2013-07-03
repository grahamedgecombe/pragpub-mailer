pragpub-mailer
==============

Introduction
------------

This is a little script I've been using on my server for a year to send the
latest issue of [PragPub][pragpub] to my Kinde automatically.

Building
--------

You'll need [fpm][fpm] and GNU make. Just type `make` to build the deb.

Installation
------------

Run `dpkg -i pragpub-mailer.deb`. Before it works, you'll need to do two
things:

  1. Edit the `/etc/pragpub-mailer.conf` configuration file.

  2. Write the number of the most recent issue of PragPub you have read to the
     `/var/lib/pragpub-mailer/last-issue` file. For example, if you last read
     issue #48, then run the following command:
     `echo 48 > /var/lib/pragpub-mailer/last-issue`.

The cronjob will run at 5am UTC every day to check for a new issue.

License
-------

pragpub-mailer is released under the [ISC license][isc]. See the `LICENSE` file
for the copyright notice and license text.

[pragpub]: http://pragprog.com/magazines
[fpm]: https://github.com/jordansissel/fpm
[isc]: http://www.tldrlegal.com/license/isc-license
