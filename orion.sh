if [ ! -f /etc/yum.repos.d/testbed-fi-ware.repo ]; then

	cp fi-ware.repo /etc/yum.repos.d/testbed-fi-ware.repo
fi

yum install -y contextBroker
