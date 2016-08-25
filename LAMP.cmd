    1  passwd 
    2  exit
    3  ifconfig 
    4  halt -p
    5  ifconfig 
    6  halt   -p
    7  halt  -p
    8  ifconfig 
    9  cd /etc/sysconfig/network-scripts/
   10  ls
   11  vi ifcfg-eno16777736 
   12  :q
   13  clear
   14  ls
   15  cp ifcfg-eno16777736 /root/
   16  reboot 
   17  ifconfig 
   18  cd /etc/sysconfig/network-scripts/
   19  ls
   20  vim ifcfg-eno16777736 
   21  clear
   22  ls
   23  vim ifcfg-eno16777736 
   24  clear
   25  ls
   26  vim ifcfg-eno16777736 
   27  reboot 
   28  ifconfig 
   29  ping 10.10.12.23
   30  clear
   31  ifconfig 
   32  vim /etc/sysconfig/network-scripts/ifcfg-eno16777736 
   33  /etc/init.d/network restart
   34  ifconfig 
   35  vim /etc/sysconfig/network-scripts/ifcfg-eno16777736 
   36  reboot 
   37  ls
   38  vi list-server
   39  ssh root@www.didashop.com
   40  scp root@www.didashop.com:/root/a.cmd .
   41  ls
   42  ssh root@www.didashop.com
   43  ls
   44  vi list-server 
   45  clear
   46  ls
   47  clear
   48  ls
   49  mkdir -p bak/network
   50  mv ifcfg-eno16777736 bak/network/
   51  ls
   52  mv list-server bak/
   53  cd bak/network/
   54  ls
   55  cp /etc/sysconfig/network-scripts/ifcfg-eno16777736 ./ifcfg-eno16777736-edit-1
   56  ls
   57  cd ..
   58  ls
   59  vi list-server 
   60  vi ../a.cmd 
   61  exit
   62  ifconfig 
   63  /etc/init.d/network restart
   64  ifconfig 
   65  exit
   66  cd /etc/samba/
   67  ls
   68  vi smb.conf 
   69  firewall-cmd --permanent --zone=public --add-service=samba
   70  firewall-cmd --reload
   71  systemctl start smb
   72  systemctl status smb.service
   73  systemctl list-units --type=service
   74  systemctl list-units --type=service | grep at\..*.service
   75  systemctl status smb.service
   76  clear
   77  systemctl list-units --type=service | grep at\..*.service
   78  systemctl start smb.service
   79  cd ../..
   80  cd /root/
   81  yum -y install samba samba-client samba-common
   82  rpm -qi samba
   83  ulimit -n 16384
   84  vi /etc/security/limits.conf 
   85  cd /etc/samba/
   86  ls
   87  cp smb.conf smb.conf-bak
   88  clear
   89  ls
   90  vi smb.conf
   91  mkdir -p /data/samba/docs
   92  testparm 
   93  mkdir -p /data/samba/tech
   94  ls /data/samba/
   95  useradd tech
   96  smbpasswd -a tech
   97  chown tech:root /data/samba/tech/
   98  ll
   99  cd /data/samba/
  100  ll
  101  chmod -R 777 tech/
  102  ll
  103  systemctl status smb
  104  systemctl start smb
  105  systemctl status smb
  106  systemctl enable smb
  107  smbclient -L localhost -U tech@000000
  108  cd ..
  109  ls
  110  cd /root/bak/
  111  ls
  112  wget http://www.cnblogs.com/kluan/p/4452684.html
  113  ls
  114  mv 4452684.html samba.config.html
  115  ls
  116  clear
  117  systemctl status smb
  118  vi /etc/samba/smb.conf
  119  vi /etc/selinux/config 
  120  reboot 
  121  yum -y install vim-enhanced libaio pcre-devel openssl openssl-devel 
  122  mv /bin/vi /bin/vi.bak
  123  ln -s /usr/bin/vim /bin/vi
  124  clear
  125  vi /etc/profile[B
  126  mkdir -p /data/packages
  127  mkdir -p /data/web/
  128  mkdir -p /data/conf.d
  129  cd /data/packages/
  130  ls
  131  wget http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.14-linux-glibc2.5-x86_64.tar.gz
  132  ls
  133  rm -rf mysql-5.7.14-linux-glibc2.5-x86_64.tar.gz 
  134  clear
  135  ls
  136  systemctl status smb
  137  ls
  138  ifconfig 
  139  halt -p
  140  ifconfig 
  141  exit
  142  ifconfig 
  143  yum update
  144  hostname
  145  hostname -f
  146  yum install httpd
  147  cp /etc/httpd/conf/httpd.conf   /etc/httpd/conf/httpd.conf.backup
  148  vi /etc/httpd/conf/httpd.conf
  149  ll /etc/httpd/conf./
  150  ll /etc/httpd/conf.d/
  151  vi /etc/httpd/conf.d/vhost.conf
  152  mkdir -p /var/www/example.com/public_html
  153  mkdir -p /var/www/example.com/logs
  154  systemctl enable httpd.service
  155  systemctl restart httpd.service
  156  firewall-cmd --permanent --zone=public --add-service=http
  157  firewall-cmd --permanent --zone=public --add-service=https
  158  firewall-cmd --reload
  159  ifconfig 
  160  yum install http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
  161  yum install mariadb-server
  162  systemctl enable mariadb.service
  163  systemctl start mariadb.service
  164  systemctl enable mysql.service
  165  systemctl  start  mysql.service
  166  ps -aux | grep mysql
  167  mysql
  168  chkconfig mysql on
  169  chkconfig mysqld on
  170  systemctl enable mysqld.service
  171  clear
  172  mysql_secure_installation
  173  sysctl restart mysqld.service
  174  sysctl reload mysqld.service
  175  sysctl stop mysqld.service
  176  systemctl  stop  mysql.service
  177  systemctl  restart  mysql.service
  178  mysql -p
  179  systemctl  restart  mysql.service
  180  yum install php php-pear
  181   yum install php-mysql
  182  cp /etc/php.ini /etc/php.ini.original
  183  vi /etc/php.ini
  184  mkdir -p /var/log/php
  185  chown apache /var/log/php
  186  systemctl reload httpd
  187  vi /etc/httpd/conf/httpd.conf
  188  cd /var/www/
  189  ls
  190  cd html/
  191  ls
  192  vi index.php
  193  mv index.php info.php
  194  ls /var/www/example.com/public_html/
  195  cp info.php /var/www/example.com/public_html/
  196  ifconfig 
  197  sysctl restart httpd.service
  198  sysctl restart httpd
  199  systemctl restart httpd
  200  vi /etc/httpd/conf/httpd.conf
  201  vi /etc/httpd/conf.d/vhost.conf 
  202  cd /var/www/example.com/
  203  ls
  204  cd public_html/
  205  ls
  206  cp info.php index.php
  207  history > /root/bak/lamp.cmd
  208  clear
  209  ls
  210  history | grep httpd.conf
  211  vi /etc/httpd/conf/httpd.conf
  212  vi /etc/httpd/conf.d/vhost.conf 
  213  sysctl restart httpd
  214  systemctl restart httpd
  215  ifconfig 
  216  clear
  217  ls
  218  vi index.php 
  219  ls /var/
  220  ls /var/www/example.com/
  221  ls /var/www/example.com/public_html/
  222  ls
  223  cd /var/www/example.com/public_html/
  224  vi index.php 
  225  ls
  226  vi /root/bak/lamp.cmd 
  227  vi /etc/httpd/conf/httpd.conf
  228  vi /root/bak/lamp.cmd 
  229  cat /etc/httpd/conf.d/vhost.conf
  230  vi /root/bak/lamp.cmd 
  231  vi /etc/php.ini
  232  vi /root/bak/lamp.cmd 
  233  cd /var/www/html/
  234  ls
  235  cd ..
  236  ls
  237  ls example.com/
  238  ls example.com/public_html/
  239  scp  example.com/public_html/* root@10.10.12.188:/var/www/example.com/public_html/
  240  cd /root/bak/
  241  ls
  242  ls ..
  243  ls network/
  244  vi network/ifcfg-eno16777736-edit-1 
  245  vi network/ifcfg-eno16777736
  246  ls
  247  ifconfig 
  248  exit
  249  cd /var/www/
  250  ls
  251  cd example.com/
  252  ls
  253  cd public_html/
  254  vi index.php 
  255  systemctl stop httpd.service
  256  systemctl start httpd.service
  257  halt -p
  258  ifconfig 
  259  ls
  260  ls bak/
  261  vi /etc/sysconfig/network-scripts/ifcfg-eno16777736 
  262  :q
  263  clear
  264  ls
  265  ps -aux | grep httpd
  266  ps -aux | grep mysql
  267  c;ear
  268  clear
  269  ps -aux | grep php
  270  cd bak/
  271  ls
  272  ls network/
  273  cd network/
  274  ls
  275  cat ifcfg-eno16777736-edit-1 
  276  cat ifcfg-eno16777736
  277  clear
  278  ls
  279  ls ..
  280  pwd
  281  cd ..
  282  ls
  283  ls ..
  284  ls /root/
  285  cp /etc/sysconfig/network-scripts/ifcfg-eno16777736 /root/
  286  ifconfig 
  287  cd ..
  288  ls
  289  ls bak/
  290  ccd bak/
  291  ls
  292  clear
  293  ls
  294  vi ifcfg-eno16777736 
  295  ls
  296  clear
  297  ls
  298  cd bak/
  299  ls
  300  vi ifcfg-eno16777736 
  301  clear
  302  ls
  303  cp /etc/sysconfig/network-scripts/ifcfg-eno16777736 /root/
  304  ls
  305  mv ifcfg-eno16777736 ifcfg-eno16777736-new
  306  cp ifcfg-eno16777736-new /etc/sysconfig/network-scripts/ifcfg-eno16777736 
  307  /etc/init.d/network restart
  308  ifconfig 
  309  exit
  310  vi /etc/samba/smb.conf
  311  cd /var/www/html/
  312  ls
  313  vi info.php 
  314  cd ..
  315  ls
  316  cd example.com/
  317  ls
  318  pwd
  319  vi /etc/samba/smb.conf
  320  service restart smb.service
  321  systemctl restart smb.service
  322  clear
  323  mv /data/samba/tech/magento-1.9.2.4-2016-02-23-06-04-07.tar.gz .
  324  ls
  325  tar zxf magento-1.9.2.4-2016-02-23-06-04-07.tar.gz 
  326  ls
  327  ls magento
  328  clear
  329  ls
  330  mv public_html/ public_html-T
  331  mv magento public_html
  332  ll
  333  chmod -R 777 public_html
  334  ls
  335  ifconfig 
  336  ls
  337  ls public_html-T/
  338  cp public_html-T/info.php public_html
  339  vi /etc/php.ini
  340  systemctl stop httpd.service
  341  systemctl start httpd.service
  342  vi /etc/php.ini
  343  yum -y install php-mbstring php-soap php-mcrypt
  344  ls
  345  ls /root/
  346  cp /root/ifcfg-eno16777736 /etc/sysconfig/network-scripts/
  347  exit
  348  /etc/init.d/network restart
  349  reboot 
  350  ifconfig 
  351  yum -y install php-mbstring php-soap php-mcrypt
  352  exit
  353  systemctl restart httpd.service
  354  vi /etc/php.ini
  355  yum -y install php-libmcrypt
  356  yum -y install php5-mcrypt
  357  find / -name "php_mcrypt.so"
  358  yum -y install php-bcmath php-gd libjpeg* php-intl php-ldap php-mbstring php-mhash php-mysqlnd php-odbc php-pdo php-pear php-pecl-memcache php-soap php-xml php-xmlrpc
  359  cd /data/packages/
  360  ls
  361   wget http://sourceforge.net/projects/mcrypt/files/Libmcrypt/2.5.8/libmcrypt-2.5.8.tar.gz
  362  wget http://sourceforge.net/projects/mhash/files/mhash/0.9.9.9/mhash-0.9.9.9.tar.gz
  363  wget http://sourceforge.net/projects/mcrypt/files/MCrypt/2.6.8/mcrypt-2.6.8.tar.gz
  364  wget http://museum.php.net/php5/php-5.4.16.tar.gz
  365  ls
  366  rm -rf php-5.4.16.tar.gz 
  367  clear
  368  ls
  369  tar zxf libmcrypt-2.5.8.tar.gz 
  370  cd libmcrypt-2.5.8/
  371  ./configure 
  372  make && make install
  373  cd ..
  374  ls
  375  tar zxf mhash-0.9.9.9.tar.gz 
  376  cd mhash-0.9.9.9/
  377  ./configure 
  378  make && make install
  379  cd ..
  380  ls
  381  tar zxf mcrypt-2.6.8.tar.gz 
  382  cd mcrypt-2.6.8/
  383  LD_LIBRARY_PATH=/usr/local/lib ./configure
  384  make && make install
  385  vi /etc/php.ini
  386  systemctl stop
  387  systemctl stop httpd.service
  388  systemctl start httpd.service
  389  vi /etc/php.ini
  390  cat /etc/php.ini
  391  find / -name "mcrypt.so"
  392  ls /usr/bin/php-config
  393  find  / -name "php-config"
  394  whereis php-config
  395  ls
  396  yum install curl libcurl3 libcurl3-dev php5-curl
  397  yum install php5-mcrypt
  398  cat /etc/php.ini
  399  systemctl restart httpd.service
  400  yum install php-mcrypt
  401  rpm -ivh http://mirrors.sohu.com/fedora-epel/7/x86_64/e/epel-release-7-8.noarch.rpm
  402  yum update
  403  yum repolist
  404  yum install php-mcrypt
  405  systemctl restart httpd.service
  406  mysql -uroot
  407  mysql -uroot -p
  408  cd /root/
  409  ls
  410  vi .mysql_history 
  411  ls
  412  cat ifcfg-eno16777736 
  413  cp bak/ifcfg-eno16777736-new /etc/sysconfig/network-scripts/ifcfg-eno16777736 
  414  reboot 
  415  cd /var/
  416  ll
  417  cd www/
  418  ls
  419  ll
  420  chmod -R 777 example.com/
  421  ls
  422  cd ...
  423  ls
  424  cd ..
  425  ls
  426  cd www/
  427  ls
  428  cd example.com/
  429  ls
  430  cd magento-plugins/
  431  ls
  432  tar zxf Ultimate_ModuleCreator-1.9.6.0.1.tgz 
  433  ls
  434  cd /root/
  435  ls
  436  history > b.cmd
