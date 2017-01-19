rm -fr /etc/localtime
ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime
yum -y install epel-release
yum repolist
yum -y install net-tools tree gcc libffi-devel openssl-devel git
yum -y install python-pip
pip install --upgrade pip

