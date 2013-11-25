cups-autoenable
===============
Script that looks for disabled cups printers and enables them.

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
Tomas Edwardsson


License
=======
GPLv3+
