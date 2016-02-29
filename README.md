Alpine Linux docker image with PHP 5.6 set up with "php" as entrypoint.

```bash
$ docker run --rm -it -v $(pwd):/data jimlei/alpine-phpcli -v
```

#### Alias
Add to `~/.bashrc`
```bash
alias php='docker run --rm -it -v $(pwd):/data jimlei/alpine-phpcli'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ php -v
```
