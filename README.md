# Aerodeck Deploy

This repository is for deploying the Aerodeck platform, both in production and development environments.

## Requirements

This suite of tools has a number of dependencies. [Chef](http://www.opscode.com/chef/) is used for automated deployment and
provisioning, [Librarian](https://github.com/applicationsonline/librarian) is used to manage cookbooks, and
[Vagrant](http://www.vagrantup.com) is used to deploy locally.

### Chef and Librarian

You can install both Chef and Librarian using RubyGems:

``` sh
gem install chef librarian
```

### Vagrant

Vagrant sets up a headless VM to run the Aerodeck platform. For this reason, Vagrant depends on VirtualBox. You can
download and install the latest version of both VirtualBox and Vagrant from their download pages:

- [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant Downloads](http://downloads.vagrantup.com/)

## Getting Started

To get the Aerodeck platform running locally, you only need to run a few commands:

``` sh
git clone git://github.com/aerodeck/aerodeck-deploy.git; cd aerodeck-deploy
git submodule update --init --recursive
librarian-chef install
vagrant up
```

## License

aerodeck-deploy is available under the MIT license. See the LICENSE file for more info.
