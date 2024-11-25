cat /etc/passwd
getent group sudo
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
cd UTN-FRA_SO_Examenes/
cd 202406
ls
bash script_Precondicion.sh 
ource  ~/.bashrc  && history -a 
source  ~/.bashrc  && history -a 
bash script_Precondicion.sh 
cd
ls
cd RTA_Examen_20241124/
ls
vim Punto_
vim Punto_A.sh 
sudo apt install vim
ls
cd
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk -l
lsblk
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdb2
sudo pvcreate /dev/sdd1
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_datos /dev/sdb2
sudo vgcreate vg_datos /dev/sdb2lsblk
lsblk
sudo fdisk /dev/sdd
sudo fdisk /dev/sdb
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdd
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_datos /dev/sdd
sudo vgcreate vg_temp /dev/sdd
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker 
sudo mkfs.ext4 /dev/vg_datos/lv_workareas 
sudo mkswap /dev/vg_temp/lv_swap 
sudo mkdir -p /var/lib/docker
sudo -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work
sudo mkdir -p /work/
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
/dev/vg_datos/lv_docker /var/lib/docker/ ext4 defaults 0 2
sudo /dev/vg_datos/lv_docker /var/lib/docker/ ext4 defaults 0 2
sudo /dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
tree /etc/
sudo /dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2
sudo lvs
sudo mkfs.ext4 /dev/vg_datos/lv_docker 
df -h
sudo nano /etc/fstab 
sudo mount -a
df -h
exit
whoami
su - osboxes 
cd
sudo apt update
apt list --upgradeable
sudo apt install ansible -y
echo "grupo_tigres:usuario1" > Lista_Usuarios.txt
ls
cat Lista_Usuarios.txt 
echo "grupo_pumas:usuario1" >> Lista_Usuarios.txt
echo "grupo_ardillas:usuario1" >> Lista_Usuarios.txt
cat Lista_Usuarios.txt 
cd /usr/local/bin/
ls
vim fariasAltaUser-Groups.sh
ls
ls -a
vim fariasAltaUser-Groups.sh
ls
echo "a" > fariasAltaUser-Groups.sh
sudo echo "a" > fariasAltaUser-Groups.sh
ls
ls -la
a.sh
cat a.sh
cat << EOF > a.sh
a
EOF

ls
exit
cd
echo "a" > a.sh
ls
rm a.sh 
vim fariasAltaUser_Groups.sh
ls
vim fariasAltaUser_Groups.sh 
sudo mv fariasAltaUser_Groups.sh /usr/local/bin/fariasAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/fariasAltaUser-Groups.sh 
sudo /usr/local/bin/fariasAltaUser-Groups.sh pepe /home[200~sudo /usr/local/bin/fariasAltaUser-Groups.sh pepe /home
pwd
sudo /usr/local/bin/fariasAltaUser-Groups.sh pepe /home/santiagof/Lista_Usuarios.txt
sudo /usr/local/bin/fariasAltaUser-Groups.sh santiagof /home/santiagof/Lista_Usuarios.txt
getent passwd 
getent group 
getent passwd 
sudo userdel usuario1 
sudo userdel -r usuario1
sudo groupdel grupo_ardillas 
sudo groupdel grupo_pumas 
sudo groupdel grupo_tigres 
vim fariasAltaUser_Groups.sh 
cd /usr/local/bin/
ls
rm fariasAltaUser-Groups.sh 
sudo rm fariasAltaUser-Groups.sh 
ls
cd
ls
vim fariasAltaUser_Groups.sh 
sudo mv fariasAltaUser_Groups.sh /usr/local/bin/fariasAltaUser-Group.sh
sudo chmod +x /usr/local/bin/fariasAltaUser-Group.sh 
sudo /usr/local/bin/fariasAltaUser-Group.sh 
getent passwd 
getent group 
ls
cat Lista_Usuarios.txt 
rm Lista_Usuarios.txt 
pwd
sudo /usr/local/bin/fariasAltaUser-Group.sh 
getent passwd 
ls
sudo /usr/local/bin/fariasAltaUser-Group.sh 
getent passwd 
getent group 
ls
rm Lista_Usuarios.txt 
ls
rm -r Lista_Usuarios.txt 
ls
sudo groupdel grupo_resta 
sudo userdel restarex 
getent group 
sudo groupdel grupo_resta 
getent group 
cat /usr/local/bin/fariasAltaUser-Group.sh 
vim /usr/local/bin/fariasAltaUser-Group.sh 
cat /usr/local/bin/fariasAltaUser-Group.sh 
ls
tree
ls
tree RTA_Examen_20241124/
tree UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
cat index.html 
vim index.html 
cat index.html 
ls
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
df -h
getent passwd 
getent group 
sudo usermod -a -G docker $(whoami)
cat /etc/passwd
cat /etc/group
id
exit
cd
id
exit
cd
id
docker ps
sudo systemctl status docker
git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
ls
tree UTN-FRA_SO_Docker/
ls
cd UTN-FRA_SO_Docker/
ls
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
vim Dockerfile
docker build -t web1-santiagof .
df -h
docker container prune
df -h
docker image prune -a
df -h
docker network prune
df -h
docker system prune -a --volumes
df -h
sudo systemctl stop docker
sudo mv /var/lib/docker /nuevo/directorio/docker
sudo mv /var/lib/docker /home/santiagof/docker
lsblk
lvdisplay
sudo lvdisplay
sudo lvextend -L +500M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
df -h
docker build -t web1-santiagof .
docker login
a
docker tag web1-farias 343412/web1-farias:latest
docker images
docker tag web1-farias 343412/web1-santiagof:latest
docker tag web1-santiagof 343412/web1-farias:latest
docker push 343412/web1-santiagof:latest
docker images
docker tag web1-santiagof 343412/web1-santiagof:latest
docker images
docker push 343412/web1-santiagof:latest
vim run.sh
chmod +x run.sh 
bash run.sh 
cd .
ls
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
cat README.md 
hitory
history 
cat README.md 
mkdir -p {tmp/2do_parcial}/{alumno, equipo}
ls
tree \{tmp/
rm \{tmp/
rmdir \{tmp/
rmdir -r \{tmp/
rmdir -R \{tmp/
rm -R \{tmp/
ls
mkdir -p tmp/2do_parcial/{alumno, equipo}
ls
tree tmp/
cd tmp/
tee
tree
cd ..
rm -r tmp/
mkdir -p tmp/2do_parcial/alumno, equipo
ls
tree tmp/
rm -r tmp/
mkdir -p tmp/2do_parcial/{alumno, equipo}
ls
tree tmp/
rm -r tmp/
mkdir -p tmp/2do_parcial/{alumno,equipo}
tree tmp/
cd tmp/
tree
cd ..
cd tmp/
cd 2do_parcial/
cd alumno/
vim datos_alumno.txt
cd ..
cd equipo/
vim datos_equipo.txt
ip
curl ifconfig.me
vim datos_equipo.txt
cat /etc/os-release 
vim datos_equipo.txt
nproc
vim datos_equipo.txt
curl ifconfig.me && echo && cat /etc/os-release && echo && nproc
sudo adduser supervisor
sudo addgroup 2PSupervisores
sudo groupadd 2PSupervisores
sudo visudo 
sudo usermod -aG 2PSupervisores supervisor 
cd
ls
git clone https://github.com/Santiago-Farias/UTNFRA_SO_2do_Parcial_Farias.git
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
pwd
cd
cp -r /home/santiagof/UTN-FRA_SO_Examenes/202406 /home/santiagof/UTNFRA_SO_2do_Parcial_Farias/
cd RTA_Examen_20241124/
ls
vim Punto_A.sh 
cd
cp -r /home/santiagof/RTA_Examen_20241124/ /home/santiagof/UTNFRA_SO_2do_Parcial_Farias/
history -a
