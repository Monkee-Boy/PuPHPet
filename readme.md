![Monkee-Boy](https://dujrsrsgsd3nh.cloudfront.net/img/emoticons/113009/mboy-1403710932.jpg) MBoy Vagrant [![GitHub version](https://badge.fury.io/gh/Monkee-Boy%2FPuPHPet.svg)](https://badge.fury.io/gh/Monkee-Boy%2FPuPHPet)
==============

Monkee-Boy uses Vagrant for local dev environments. This VM mirrors our Habitat server. Do not update versions on your own. We will update the VM as Habitat is updated. This was created using [PuPHPet](https://puphpet.com).

## The Details

* **Provider**: VirtualBox
* **Distro**: Ubuntu Xenial 16.04 LTS x64
* **IP Address**: 192.168.22.10
* **Apache**: v2.4
* **PHP**: v7.0
* **Ruby**: v2.2.3 *(with RVM)*
* **Python**: v2.7
* **node.js**: v4
* **MySQL**: v5.7
* **SQLite**: v3.11
* **MailHog**: v0.2.1
* **WP CLI**: v0.24


## Get It

* `git clone git@github.com:Monkee-Boy/PuPHPet.git && cd PuPHPet`
* `vagrant up`
* Use `vagrant ssh` if you need to make any further changes.

### Add Domain

* `cd` to this git repo.
* `vagrant ssh -c 'sudo vhost -s client-domain.dev -a www.client-domain.dev -d /var/www/clientname/site'`
  * `-s` is the server name, `-a` is the server alias, `-d` is the document root.
* Edit your hosts file with `192.168.22.10 client-domain.dev`.
* http://client-domain.dev should now work.

#### Quick Add

* Edit `./vhostalias.sh` with your vagrant id. Get this by running `vagrant global-status`.
* Setup `alias vagrantvhost="sh ~/Sites/PuPHPet/vhostalias.sh"` as an alias. Modify the path to this vagrant repo.
* Add new domain with `vagrantvhost client-domain.dev /var/www/clientname/site`. This will automatically include a server alias of www.
* Feel free to modify the alias to whatever is easier for you.

### MySQL Connection

We recommend using [SequelPro](http://www.sequelpro.com/) for easy database management.

* Type: `SSH`
* Host: `192.168.22.10`
* User: `root`
* Pass: `root`
* SSH Host: `192.168.22.10`
* SSH User: `vagrant`
* SSH Password/Key: Select `./puphpet/files/dot/ssh/id_rsa`. This key is generated after your initial `vagrant up`.


## The Dev Team

Handcrafted with ♥ in Austin, Texas by the [Monkee-Boy Troop](https://www.monkee-boy.com/who/the-troop/).

[![James Fleeting](https://avatars0.githubusercontent.com/u/23062?s=144)](https://github.com/fleeting) | [![Pete Gautier](https://avatars2.githubusercontent.com/u/5394199?v=3&s=144)](https://github.com/pgautier404) | [![John Hoover](https://avatars3.githubusercontent.com/u/48278?v=3&s=144)](https://github.com/defvayne23) | [![David Saunders](https://avatars3.githubusercontent.com/u/4614981?v=3&s=144)](https://github.com/djsaun)
:---:|:---:|:---:|:---:|:---:
[James Fleeting](https://github.com/fleeting) | [Pete Gautier](https://github.com/pgautier404) | [John Hoover](https://github.com/defvayne23) | [David Saunders](https://github.com/djsaun)

![Monkee-Boy](http://assets.monkee-boy.com/mboy-logo-tagline.jpg)
