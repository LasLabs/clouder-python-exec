[![License: Apache 2.0](https://img.shields.io/badge/licence-Apache--2.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/LasLabs/clouder-python-exec.svg?branch=master)](https://travis-ci.org/LasLabs/clouder-python-exec)

Clouder Python Exec
===================

This image provides Python for Clouder.

Configuration
=============

*

Usage
=====

* 

Build Arguments
===============

The following build arguments are available for customization:


| Name | Default | Description |
|------|---------|-------------|
| INCLUDE_DEV | 1 | Whether to install development headers and compilers. Anything other than `1` to not install them. |
| PYTHON_VERSION | 3 | Python version to install & expose. Either `2` or `3` |


Environment Variables
=====================

The following environment variables are available for your configuration
pleasure:

| Name | Default | Description |
|------|---------|-------------|


Known Issues / Roadmap
======================

* Add a test for `parse_cfssl`

Bug Tracker
===========

Bugs are tracked on [GitHub Issues](https://github.com/LasLabs/clouder-python-exec/issues).
In case of trouble, please check there to see if your issue has already been reported.
If you spotted it first, help us smash it by providing detailed and welcomed feedback.

Credits
=======

Contributors
------------

* Dave Lasley <dave@laslabs.com>

Maintainer
----------

[![LasLabs Inc.](https://laslabs.com/logo.png)](https://laslabs.com)

This module is maintained by [LasLabs Inc.](https://laslabs.com)

* https://github.com/LasLabs/clouder-python-exec
