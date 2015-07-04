cups-autoenable
===============
Script that looks for disabled cups printers and automaticly enables them if disabled and clears the print queue of printers that were paused.

But How?
========

Install
-------
Put it somewhere, eg. /usr/local/bin/cups-autoenable.sh

Setup cron entry which will run every minute.
----------------

crontab -e
```
*/1 * * * * sh /usr/local/bin/cups-autoenable.sh
```


Done
====
Yeah, it is.




Author
======
Tomas Edwardsson and Leonardo Soares


License
=======
GPLv3+
