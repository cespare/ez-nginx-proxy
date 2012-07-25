# ez-nginx-proxy

ez-nginx-proxy is a small wrapper around nginx. It requires nginx to already be installed. It is useful for
development, when you want to very easily start a proxy that will send requests to various other
development/production servers based on matching the routes.

ez-nginx-proxy takes a very simple Ruby configuration file. Here is an example configuration:

``` ruby
[
  ["/foo/bar", "localhost:1234"],
  ["/", "amazon.com"]
]
```

If you run this configuration like this:

    $ ez-nginx-proxy -p 9000 my_config.rb

ez-nginx-proxy will create a temporary nginx configuration file that redirects `localhost:9000/foo/bar` to
`localhost:1234/foo/bar` and `localhost:9000/blah` to `amazon.com/blah`.

## Usage

    $ ez-nginx-proxy your_config.rb

See `ez-nginx-proxy -h` for all the options.

## Installation

Install nginx. You can do this using your favorite package manager:

    $ sudo apt-get install nginx
    $ brew install nginx
    # or whatever

Now install ez-nginx-proxy

    $ gem install ez-nginx-proxy

## Note

You will probably see this error when ez-nginx-proxy starts:

    nginx: [alert] could not open error log file: open() "/var/log/nginx/error.log" failed (13: Permission denied)

This is because nginx initially tries to log to `/var/log/nginx/error.log` before it starts up. See [this
nginx config page](http://wiki.nginx.org/CoreModule#error_log) for more information.


## TODO

* nginx regex matching
* pattern replacement?
* Hide the annoying 'permission denied' error
