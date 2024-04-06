# Ubuntu Server Image mit Packer

Dies ist ein Demo Projekt, in dem ein Ubuntu Server Image mit Packer erstellt werden kann.
Es dient zum Zweck des erlernens von Packer. Daher sind die in diesem enthaltenen Dateien ausschließlich für eigene Tests und zum erweitern seiner eigenen Kenntnisse gedacht.
Es soll als Leitfaden dienen und ist **NICHT** für einen produktiv Einsatz bestimmt!

## Was ist packer?
Packer ist in erster Linie ein commandline Tool aus dem Haus HashiCorp. HashiCorp ist ein Herstelle von weiteren bekannten Tools, wie etwa [Vagrant](https://www.vagrantup.com/) und [Terraform](https://www.terraform.io/). 
Mit Packer können für verschiedene Ziel-Plattformen Betriebssystem Images erzeugt werden.
Dazu sind nur einige wenige Konfigurationsdateien notwendig.
In diesem Repository befindet sich eine *.pkr.hcl-Datei, diese enthält die für Packer notwendigen Konfigurationen.

## System requirements
Um mit Packer und diesem Repo starten zu können, werden einige Tools benötigt:
* [Packer](https://www.packer.io/)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

Mit diesem Setup seid ihr in der Lage ein Ubuntu Server Image mit Packer für VirtualBox zu erzeugen.

---




