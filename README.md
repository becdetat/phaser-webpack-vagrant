# phaser-webpack-vagrant

A pre-built stack for Phaser.io projects using Webpack and with a Vagrant config for easy setup

The Vagrant configuration is originally based on https://github.com/joshfng/railsbox-packer.

The Webpack configuration is based on [A Modern Web Development Setup For Phaser 3](https://snowbillr.github.io/blog/2018-04-09-a-modern-web-development-setup-for-phaser-3/_) with some changes to support live reload under Vagrant.

The example applications are based on:

- 8080 - [Making your first Phaser 3 game](http://phaser.io/tutorials/making-your-first-phaser-3-game/index).
- 8081 - [A Modern Web Development Setup For Phaser 3](https://snowbillr.github.io/blog/2018-04-09-a-modern-web-development-setup-for-phaser-3/_)


## Instructions

Note that as configured the example apps run on port 8080 and above. If you need to change the port, change it in `Vagrantfile` and `webpack.config.js`.

1. Clone or download this repo
2. Install Vagrant
3. `vagrant up`
4. `vagrant ssh`
5. `cd /vagrant/EXAMPLE`
6. `yarn`
7. `./start.sh`
8. Browse to http://localhost:808x




