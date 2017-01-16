rm -fr /etc/localtime
ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime
yum -y install net-tools tree gcc libffi-devel openssl-devel git
#curl -OL https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz
#tar xzf Python-2.7.12.tgz 
#cd Python-2.7.12/
#./configure && make altinstall
curl -Lo /etc/yum.repos.d/pypa-epel-7.repo  https://copr.fedorainfracloud.org/coprs/pypa/pypa/repo/epel-7/pypa-pypa-epel-7.repo
yum -y install python-pip python-devel
pip install --upgrade pip
pip install ansible

