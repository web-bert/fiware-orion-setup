if [ ! -f /etc/yum.repos.d/mongodb-org-2.6.repo ]; then

	cp mongo.repo /etc/yum.repos.d/mongodb-org-2.6.repo
fi

yum install -y mongodb-org
