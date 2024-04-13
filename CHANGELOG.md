# Changelog

## [2.0.0](https://github.com/libretime/ansible-role-libretime/compare/1.0.0...2.0.0) (2024-04-13)


### ⚠ BREAKING CHANGES

* The default listen port for the installer is now 8080. We recommend that you put a reverse proxy in front of LibreTime.
* The general.secret_key configuration field is now required. Make sure to update your configuration file and add a secret key.

### Features

* allow disabling systemd hardening ([#74](https://github.com/libretime/ansible-role-libretime/issues/74)) ([8d4f4c9](https://github.com/libretime/ansible-role-libretime/commit/8d4f4c97c9215eb611eda1bf5d79c5718ea5501c))
* always install libretime in a python venv ([52e7c70](https://github.com/libretime/ansible-role-libretime/commit/52e7c708234a1bd364359792ec34b7a4ae74f41d))
* change default listen port to 8080 ([#63](https://github.com/libretime/ansible-role-libretime/issues/63)) ([c26161d](https://github.com/libretime/ansible-role-libretime/commit/c26161d0ad7d36478c96a821d1fb3f5c40465ee0))
* install unicorn inside the venv ([cc183e2](https://github.com/libretime/ansible-role-libretime/commit/cc183e25c5d1c27e915d21d78cbef18aae4c9bd5))
* move gunicorn worker config in file ([#64](https://github.com/libretime/ansible-role-libretime/issues/64)) ([1920e9a](https://github.com/libretime/ansible-role-libretime/commit/1920e9a886147973703f6421db45f2533e791d65))
* reduce downtime by building legacy in a tmp directory ([#71](https://github.com/libretime/ansible-role-libretime/issues/71)) ([8567a82](https://github.com/libretime/ansible-role-libretime/commit/8567a82d3296b6885c4bd34af414e9f21ecadf98))
* run python in optimized mode ([#75](https://github.com/libretime/ansible-role-libretime/issues/75)) ([60b0162](https://github.com/libretime/ansible-role-libretime/commit/60b01620241609634c200445e9b1074a2833d58f))
* the general.secret_key configuration field is now required ([#59](https://github.com/libretime/ansible-role-libretime/issues/59)) ([b1b1917](https://github.com/libretime/ansible-role-libretime/commit/b1b19177798a74643e03273726ef7b2f5b4ad904))
* update config templates ([#65](https://github.com/libretime/ansible-role-libretime/issues/65)) ([495a03c](https://github.com/libretime/ansible-role-libretime/commit/495a03c7cfbe3ad8ba9d9249f2c18af867b9d534))
* use nginx to serve media files ([#68](https://github.com/libretime/ansible-role-libretime/issues/68)) ([9fe4f41](https://github.com/libretime/ansible-role-libretime/commit/9fe4f4164607a2534793b24f713fc02b06e088b2))


### Bug Fixes

* ensure legacy files are not copied in a sub dir ([#72](https://github.com/libretime/ansible-role-libretime/issues/72)) ([52fc252](https://github.com/libretime/ansible-role-libretime/commit/52fc2523728f824e4544241ba42b28fd24e03ed8))
* systemd service jinja templates ([a68335c](https://github.com/libretime/ansible-role-libretime/commit/a68335c601bf53993700fea9fefb7db3994ae261))
