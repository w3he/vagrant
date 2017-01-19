rm -fr /etc/localtime
ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime
yum -y install net-tools tree gcc libffi-devel openssl-devel git
curl -Lo /etc/yum.repos.d/pypa-epel-7.repo  https://copr.fedorainfracloud.org/coprs/pypa/pypa/repo/epel-7/pypa-pypa-epel-7.repo
yum -y install python-pip python-devel
pip install --upgrade pip
pip install ansible
ln -s /vagrant/ansible .
ln -s /vagrant/ansible/ansible.cfg
