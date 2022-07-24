## Тестовое задание для последующего интервью.
`./Packer/` исходник заготовки для создания своего vagrant box, где `("disk_size": 10240)` Vagrantfile: `dodexq/debian9-job`

`./ansible/provision.yml` - установка из сходников `php-5.6.10` и `httpd-2.4.54(apache2)`, так как ни один официальный репо не помог в установке php5.

Apache на порту 8888, укладывание index.php и test.php на сайт.
Прокси nginx 80 > apache 8888

http://192.168.56.55/

Напишу: playbook для обновления php5.6 до php7.2.