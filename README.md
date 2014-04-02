# Jenkins Vagrant Saltstack

Features

* Jenkins
* plugins
  * Github Plugin
  * Green Balls

## Your PHP project configuration

In your `composer` load the dev tools you require (i.e. PHPUnit, phpcpd, phpmd, phpcs etc) & have these run via Ant. This will allow one to control the version of the dev tools they use & allow developers to run them locally as well. Allowing Jenkins CI to focus on Continuous Integration.

## Config examples (coming soon)

* Composer.json (composer)
* phpunit.xml (phpunit)
* build.xml (ant)
* job-config.xml (jenkins ci)

## Recomended project directory structure (required folders/files)

* composer.json
* composer.lock
* tests/phpunit.xml
* tests/build.xml
* tests/build/.gitignore (git ignore this directory contents - will contain code coverage etc)
* tests/job-config.xml

## Debugging

If you want to see a full list of what Salt is doing you can add the following line to the VagrantFile

```
salt.verbose = true
```

Or use flag below when running vagrant command

```
--debug
```

