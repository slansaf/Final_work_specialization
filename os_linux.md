root@Ubuntu22:/home/ruslan# 
# Итоговая контрольная работа
## Операционные системы и виртуализация (Linux)

#### Создать два текстовых файла: "Plss"(Домашние животные) и "Pack animals"(вьючные животные), используя команду `cat` в терминале Linux. В первом файле перечислить собак, кошек и хомяков. Во втором — лошадей, верблюдов и ослов.

   - Объединить содержимое этих двух файлов в один и просмотреть его содержимое.
   - Переименовать получившийся файл в "Human Friends".

Пример конечного вывода после команды “ls” :
Desktop Documents Downloads  HumanFriends.txt  Music  PackAnimals.txt  Pets.txt  Pictures  Videos

#######################################################################################

```sh
root@Ubuntu22:/home/ruslan# cat > Pets 
```
dog

cat

hamster

^C
```sh
root@Ubuntu22:/home/ruslan# cat Pets
```
dog

cat

hamster


```sh
root@Ubuntu22:/home/ruslan# cat > PackAnimals
```
horse  

camel

donkey

^C
```sh
root@Ubuntu22:/home/ruslan# cat PackAnimals 
```

horse

camel

donkey

```sh
root@Ubuntu22:/home/ruslan# cat Pets PackAnimals > CombinedAnimals.txt  

root@Ubuntu22:/home/ruslan# mv CombinedAnimals.txt HumanFriends.txt 

root@Ubuntu22:/home/ruslan# cat HumanFriends.txt 
```

dog

cat

hamster

horse

camel

donkey


```sh
root@Ubuntu22:/home/ruslan# ls
```

| Desktop| folder_2 | HumanFriends.txt |
|-|----|----|
|Public| text.txt| docker-compose.yml |
|gb| Music | snap |      
|Videos| Documents |  home_work_3 |     
|ackAnimals|Templates |www|
|Downloads| home_work_3_win|Pets|              
|testfolder|folder | home_work_6.txt | 
| Pictures | testln



#### Создать новую директорию и переместить туда файл "Human Friends".

```sh
root@Ubuntu22:/home/ruslan# mkdir Animals

root@Ubuntu22:/home/ruslan# mv HumanFriends.txt Animals/

root@Ubuntu22:/home/ruslan# ls
```
Animals             folder           home_work_6.txt  Public      text.txt

Desktop             folder_2         Music            snap        Videos

docker-compose.yml  gb               PackAnimals      Templates   www

Documents           home_work_3      Pets             testfolder

Downloads           home_work_3_win  Pictures         testln


```sh
root@Ubuntu22:/home/ruslan# cd Animals/

root@Ubuntu22:/home/ruslan/Animals# ls
```
HumanFriends.txt

```sh
root@Ubuntu22:/home/ruslan/Animals# cd ..
```
###########################################################################

Работа с MySQL в Linux. “Установить MySQL на вашу вычислительную машину ”

###########################################################################


```sh
root@Ubuntu22:/home/ruslan# sudo apt update && sudo apt install mysql-server
```


Hit:1 http://ru.archive.ubuntu.com/ubuntu jammy InRelease

Get:2 http://ru.archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]     

Hit:3 http://ru.archive.ubuntu.com/ubuntu jammy-backports InRelease            

Hit:4 https://download.docker.com/linux/ubuntu jammy InRelease                 

Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease               

Fetched 128 kB in 1s (156 kB/s)                      

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

87 packages can be upgraded. Run 'apt list --upgradable' to see them.

N: Skipping acquire of configured file 'stable/binary-i386/Packages' as repository 'https://download.docker.com/linux/ubuntu jammy InRelease' doesn't support architecture 'i386'

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

The following package was automatically installed and is no longer required:

  ubuntu-fan

Use 'sudo apt autoremove' to remove it.

The following NEW packages will be installed:

  mysql-server

0 upgraded, 1 newly installed, 0 to remove and 87 not upgraded.

Need to get 9 468 B of archives.

After this operation, 35,8 kB of additional disk space will be used.

Get:1 http://ru.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-server all 8.0.39-0ubuntu0.22.04.1 [9 468 B]

Fetched 9 468 B in 0s (76,8 kB/s)            

Selecting previously unselected package mysql-server.

(Reading database ... 252151 files and directories currently installed.)

Preparing to unpack .../mysql-server_8.0.39-0ubuntu0.22.04.1_all.deb ...

Unpacking mysql-server (8.0.39-0ubuntu0.22.04.1) ...

Setting up mysql-server (8.0.39-0ubuntu0.22.04.1) ...

root@Ubuntu22:/home/ruslan# sudo add-apt-repository ppa:ondrej/mysql-5.7

ERROR: ppa 'ondrej/mysql-5.7' not found (use --login if private)
```sh
root@Ubuntu22:/home/ruslan# sudo apt update
```
Hit:1 http://ru.archive.ubuntu.com/ubuntu jammy InRelease

Hit:2 http://ru.archive.ubuntu.com/ubuntu jammy-updates InRelease              

Hit:3 http://ru.archive.ubuntu.com/ubuntu jammy-backports InRelease            

Hit:4 https://download.docker.com/linux/ubuntu jammy InRelease                 

Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease               

Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

87 packages can be upgraded. Run 'apt list --upgradable' to see them.

N: Skipping acquire of configured file 'stable/binary-i386/Packages' as repository 'https://download.docker.com/linux/ubuntu jammy InRelease' doesn't support architecture 'i386'
```sh
root@Ubuntu22:/home/ruslan# sudo apt install mysql-client
```
Reading package lists... Done

Building dependency tree... Done

Reading state information... Done

The following package was automatically installed and is no longer required:

  ubuntu-fan

Use 'sudo apt autoremove' to remove it.

The following NEW packages will be installed:

  mysql-client

0 upgraded, 1 newly installed, 0 to remove and 87 not upgraded.

Need to get 9 356 B of archives.

After this operation, 35,8 kB of additional disk space will be used.

Get:1 http://ru.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-client all 8.0.39-0ubuntu0.22.04.1 [9 356 B]

Fetched 9 356 B in 0s (192 kB/s)             

Selecting previously unselected package mysql-client.

(Reading database ... 252153 files and directories currently installed.)

Preparing to unpack .../mysql-client_8.0.39-0ubuntu0.22.04.1_all.deb ...

Unpacking mysql-client (8.0.39-0ubuntu0.22.04.1) ...

Setting up mysql-client (8.0.39-0ubuntu0.22.04.1) ...


###################################################################################

Установить и затем удалить deb-пакет, используя команду `dpkg`.

###################################################################################

```sh
root@Ubuntu22:/home/ruslan# sudo wget http://ftp.de.debian.org/debian/pool/main/g/geany/geany_1.33-1_amd64.deb
```
--2024-10-04 12:42:04--  http://ftp.de.debian.org/debian/pool/main/g/geany/geany_1.33-1_amd64.deb

Resolving ftp.de.debian.org (ftp.de.debian.org)... 141.76.2.4, 2a13:dd80:deb::deb

Connecting to ftp.de.debian.org (ftp.de.debian.org)|141.76.2.4|:80... connected.

HTTP request sent, awaiting response... 200 OK

Length: 1037560 (1013K) [application/vnd.debian.binary-package]

Saving to: 'geany_1.33-1_amd64.deb'

geany_1.33-1_amd64.deb            100%[============================================================>]   1013K  1,68MB/s    in 0,6s    

2024-10-04 12:42:05 (1,68 MB/s) - 'geany_1.33-1_amd64.deb' saved [1037560/1037560]

```sh
root@Ubuntu22:/home/ruslan# sudo dpkg -i geany_1.33-1_amd64.deb
```
Selecting previously unselected package geany.

(Reading database ... 252155 files and directories currently installed.)

Preparing to unpack geany_1.33-1_amd64.deb ...

Unpacking geany (1.33-1) ...

dpkg: dependency problems prevent configuration of geany:

 geany depends on libgdk-pixbuf2.0-0 (>= 2.22.0); however:

  Package libgdk-pixbuf2.0-0 is not installed.

 geany depends on geany-common (= 1.33-1); however:

  Package geany-common is not installed.

dpkg: error processing package geany (--install):

 dependency problems - leaving unconfigured

Processing triggers for libc-bin (2.35-0ubuntu3.8) ...

Processing triggers for mailcap (3.70+nmu1ubuntu1) ...

Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...

Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...

Processing triggers for man-db (2.10.2-1) ...

Errors were encountered while processing:

 geany
```sh
root@Ubuntu22:/home/ruslan# ls
```
Animals             Documents  folder_2                home_work_3      Music        Pictures  Templates   text.txt

Desktop             Downloads  gb                      home_work_3_win  PackAnimals  Public    testfolder  Videos

docker-compose.yml  folder     geany_1.33-1_amd64.deb  home_work_6.txt  Pets         snap      testln      www
```sh
root@Ubuntu22:/home/ruslan# rm geany_1.33-1_amd64.deb  

root@Ubuntu22:/home/ruslan# ls
```
Animals             Documents  folder_2     home_work_3_win  PackAnimals  Public     testfolder  Videos

Desktop             Downloads  gb           home_work_6.txt  Pets         snap       testln      www

docker-compose.yml  folder     home_work_3  Music            Pictures     Templates  text.txt
```sh
root@Ubuntu22:/home/ruslan# dpkg -l | grep geany   
```
iU  geany                                      1.33-1                                  amd64        fast and lightweight IDE
```sh
root@Ubuntu22:/home/ruslan# sudo dpkg -r geany
```
(Reading database ... 252178 files and directories currently installed.)

Removing geany (1.33-1) ...

Processing triggers for libc-bin (2.35-0ubuntu3.8) ...

Processing triggers for man-db (2.10.2-1) ...

Processing triggers for mailcap (3.70+nmu1ubuntu1) ...

Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...

Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...
```sh
root@Ubuntu22:/home/ruslan# dpkg -l | grep geany

root@Ubuntu22:/home/ruslan# 
```