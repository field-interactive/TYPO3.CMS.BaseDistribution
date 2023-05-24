# TYPO3 CMS Base Distribution

Get going quickly with TYPO3 CMS.

## Prerequisites

* PHP 8.1
* [Composer](https://getcomposer.org/download/)
* [Migraw](https://github.com/marcharding/migraw)

## Quickstart

* `migraw exec "composer create-project field-interactive/cms-base-distribution project-name ^12.x-dev"`
* `cd project-name`


### Development server

First, configure your migraw.yaml and update the name and host. The following command starts the development web server with migraw, installs all dependencies and runs the ``typo3 setup`` command automatically.

````bash
migraw up
````


### (Re-) Run the Setup

To start an interactive installation, you can do so by executing the following
command and then follow the wizard:

```bash
composer exec typo3 setup
```

### Setup unattended (optional)

If you're a more advanced user, you might want to leverage the unattended installation.
To do this, you need to execute the following command and substitute the arguments
with your own environment configuration.

```bash
composer exec -- typo3 setup \
    --no-interaction \
    --driver=mysqli \
    --username=typo3 \
    --password=typo3 \
    --host=127.0.0.1 \
    --port=3306 \
    --dbname=typo3 \
    --admin-username=admin \
    --admin-email="info@typo3.org" \
    --admin-user-password=password \
    --project-name="My TYPO3 Project" \
    --create-site="https://localhost/"
```

## License

GPL-2.0 or later
