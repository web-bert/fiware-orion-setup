#Some setup scripts and instructions for FiWare Orion Context Broker

##Install

###Orion Context Broker

To install the context broker simply run:

```bash
./orion.sh
```

This will ensure that the yum repo exisits and then install it

###Mongo DB

You will also need mongo DB, simply run:

```bash
./mongo.sh
```
Which will add the yum repo and install mongo

##Run

Now you are ready to run the context broker, first start mongo:

```bash
sudo service mongod start
```

Now start contextBroker

```bash
/etc/init.d/conextBroker start
```

To check the status of contextBroker you can run:

```bash
./status.sh
```


##iptables

CentOS has iptables enabled by default, we need to edit the config to allow the orion port through, so edit /etc/sysconfig/iptables and add:

```
-A INPUT -m state --state NEW -m tcp -p tcp --dport 1026 -j ACCEPT
```

Then restart iptables:

```bash
service iptables restart
```
