read -p 'Enter your main server IP like(1.1.1.1): ' IP
echo "The main server IP is $IP"
sudo apt  install iptables iptables-persistent
sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -p tcp --match multiport --dports  80,443 -j MASQUERADE 
sudo iptables -t nat -A PREROUTING -p tcp --match multiport --dports  80,443 -j DNAT --to-destination $IP
sudo iptables -t nat -A POSTROUTING -p udp -j MASQUERADE 
sudo iptables -t nat -A PREROUTING -p udp -j DNAT --to-destination $IP

sudo mkdir -p /etc/iptables/ 
sudo iptables-save | sudo tee /etc/iptables/rules.v4
echo ""
echo "DONE"
