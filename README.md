# TYPO3 CMS Base Distribution

Get going quickly with TYPO3 CMS.

## Prerequisites

* PHP 7.4
* [Composer](https://getcomposer.org/download/)
* [Migraw](https://github.com/marcharding/migraw)

## Quickstart

* `migraw exec "composer create-project field-interactive/cms-base-distribution project-name ^11.x-dev"`
* `cd project-name`


### Development server

First, configure your migraw.yaml and update the name and host. The following command starts the development web server with migraw, installs all dependencies and runs the ``typo3cms install:setup`` command automatically.

````bash
migraw up
````


### (Re-) Run the Setup

To start an interactive installation, you can do so by executing the following
command and then follow the wizard:

```bash
composer exec typo3cms install:setup
```

### Setup unattended (optional)

If you're a more advanced user, you might want to leverage the unattended installation.
To do this, you need to execute the following command and substitute the arguments
with your own environment configuration.

```bash
composer exec -- typo3cms install:setup \
    --no-interaction \
    --database-user-name=typo3 \
    --database-user-password=typo3 \
    --database-host-name=127.0.0.1 \
    --database-port=3306 \
    --database-name=typo3 \
    --use-existing-database \
    --admin-user-name=admin \
    --admin-password=password \
    --site-setup-type=site
```

## License

GPL-2.0 or later