Read 'dump' using wireshark.
I found a request to `192.168.75.230/webshell.php?cmd=ls%20%2Dl%20%2Fhome%2Fctf4b%2Fflag`

And server responsed contents of /home/ctf4b/flag

Next one is this:
```
GET /webshell.php?cmd=hexdump%20%2De%20%2716%2F1%20%22%2502%2E3o%20%22%20%22%5Cn%22%27%20%2Fhome%2Fctf4b%2Fflag HTTP/1.1\r\n
```

This executes `$ hexdump -e '16/1 "%02.3o " "\n"' /home/ctf4b/flag`

Returned data is dump.bin.
