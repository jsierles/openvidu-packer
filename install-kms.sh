echo "deb [arch=amd64] http://ubuntu.openvidu.io/6.11.0 xenial kms6" | sudo tee /etc/apt/sources.list.d/kurento.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5AFA7A83
apt-get -y install kurento-media-server
sed -i "s/DAEMON_USER=\"kurento\"/DAEMON_USER=\"${USER}\"/g" /etc/default/kurento-media-server
