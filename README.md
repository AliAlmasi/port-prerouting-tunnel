## Quick port prerouting script (using iptables)

This script can be used for initializing the port prerouting tunnel.

### What's port prerouting?

prerouting is used for altering a packet as soon as it’s received.

### What's this used for?

Genuinely, you can use this to create a relay server for your main VPN server. This method can be used in countries like Iran, where domestic servers have fewer restrictions. Your VPN packets are sent to your relay (domestic) server, then it'll be sent (by using this script) to your main VPN server (in Germany for example).

### How to use this?

You can simply use this script by running this on your relay server:

```plaintext
sudo bash <(curl https://raw.githubusercontent.com/AliAlmasi/port-forward-tunnel/main/portforward.sh)
```

After running this line, it will ask you for an IP address. Since you're making a relay server, then you should enter your main server's IP. After doing this, you can change your VPN configurations to use your relay server's IP as the destination.
