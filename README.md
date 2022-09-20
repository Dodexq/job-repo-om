## Задания на позицию DevOps для последующего интервью:
    1. Установить VirtualBox.
    2. Установить Vagrant.
    3. Создать виртуальную машину с помощью Vagrant'а со следующими характеристиками: CPU - 2 / RAM - 2 GB / HDD - 10 GB / OS - Debian 8/9.
    4. Настроить виртуальную машину через Vagrant provisioner ( Ansible ). Установить следующие пакеты:
        ◦ Vim
        ◦ Wget
        ◦ Htop
        ◦ Tmux
        ◦ Php5.6
        ◦ Nginx (Любая версия. Должен работать на 80 порту)
        ◦ Apache2 (Должен работать на порту 8888)
    5. Написать скрипт на php. Достаточно вывода фразы "Hello World!", но можно и сложнее.
    6. Написать playbook для обновления php5.6 до php7.2.
    7. Создать публичный репозиторий на GitLab или GitHub. В репозиторий положить конфиг Vagrant'а и playbook provisioner'а, все прочие скрипты.
    8. Прислать ссылку на репозиторий.

## Выполнение:
Vagrantfile: `dodexq/debian9-job` Только с VPN.

Без VPN скачать по <a href="https://disk.yandex.ru/d/QY-UAdUlNmIkyw" target="_blank">ссылке</a>. Для добавления Vagrant Box: `vagrant box add --name "dodexq/debian9-job" --force ./Virtualbox-debian9.box`


`./Packer/` исходник заготовки для создания своего vagrant box, где `("disk_size": 10240)` Vagrantfile: `dodexq/debian9-job`

`./ansible/provision.yml` - установка из сходников `php-5.6.10` и `httpd-2.4.54(apache2)`, так как ни один официальный репо не помог в установке php5.

Apache на порту 8888, укладывание index.php и test.php на сайт.
Прокси nginx 80 > apache 8888

`http://192.168.56.55/` или `http://jobvagrant`

Для обновления php5.6 > 7.2: ~/ansible/php7.4_update.yml

Проверить версию php: `http://jobvagrant/test.php`

