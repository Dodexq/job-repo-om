sudo apt install -y sshpass build-essential libxml2-dev libpcre2-dev libtool autoconf libapr1-dev libaprutil1-dev libffi-dev libc6-dev gobjc++
wget https://www.php.net/distributions/php-5.6.10.tar.gz /home/vagrant
wget https://dlcdn.apache.org/httpd/httpd-2.4.54.tar.gz /home/vagrant
tar -xzf /home/vagrant/php-5.6.10.tar.gz
tar -xzf /home/vagrant/httpd-2.4.54.tar.gz
chown --recursive vagrant:vagrant /home/vagrant/php-5.6.10
chown --recursive vagrant:vagrant /home/vagrant/httpd-2.4.54