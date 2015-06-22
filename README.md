cups-autoenable
===============
Script that looks for disabled cups printers and enables them. And automatically clean the print queue.

But How?
========

Install
-------
Put it somewhere, eg. /usr/local/bin/cups-autoenable

Setup cron entry
----------------

```
echo '* * * * * root /usr/local/bin/cups-autoenable' > /etc/cron.d/cups-autoenable
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
