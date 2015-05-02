cups-autoenable and cups-autoclean
===============
Script that looks for disabled cups printers and enables. And automatically clean the print queue.

But How?
========

Install
-------
Put it somewhere, eg. /usr/local/bin/cups-autoenable

Setup cron entry every minute
----------------

```
echo '*/1 * * * * root /usr/local/bin/cups-autoenable' > /etc/cron.d/cups-autoenable
```


Done
====
Yeah, it is.




Author
======
Tomas Edwardsson And Leonardo Soares


License
=======
GPLv3+
