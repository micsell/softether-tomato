======================================================================

     How to Use the Auto-Generated OpenVPN Configuration Samples

======================================================================

How to Use the Auto-Generated OpenVPN Configuration Samples
<< !! READ IT CAREFULLY BEFORE YOU USE !! >>


* 1. About Files
When you open the ZIP archive, the following files with the
structured-directory will be expanded.
Extract there files including sub-directory structure toward any destination
directory, and use parts according to your necessary.

< The Configuration File for L3 (IP Routing) >
  openvpn_remote_access_l3.ovpn

< The Configuration File for L2 (Ethernet Bridging) >
  openvpn_site_to_site_bridge_l2.ovpn

The extension ".ovpn" means a configuration file. You can specify the
configuration file into OpenVPN to initiate a VPN connection.


* 2. How Different between L3 and L2?
Use L3 (IP Routing) if you want to install OpenVPN on the normal computer (for
example, a lap top PC), and make it connect to PacketiX VPN Server or SoftEther
VPN Server for the purpose of establishing a "Remote-Access VPN Connection" .
In this case, the IP address will be assigned on the virtual network adapter
of OpenVPN automatically when the OpenVPN will connect to the Virtual HUB on
the VPN Server successfully and request an IP address and other network
parameters (e.g. DNS server address).

In other hand, if you want to build a "Site-to-Site VPN Connection" ,
use L2 (Ethernet Bridging) for OpenVPN on the computer which is set up on the
remote place for bridging. No IP-specific treatment will be done. All Ethernet
packets (MAC frames) will exchanged transparently between two or more sites.
Any computers or network equipments (e.g. routers) will be able to communicate
to other sites mutually.

VPN Server will treat a virtual VPN session from L3-mode OpenVPN as
a "VPN Client" session.
VPN Server will treat a virtual VPN session from L2-mode OpenVPN as
a "VPN Bridge" session.


* 3. How to Specify the Username and Password?
The prompt of username and password will be shown when you try to use this
configuration. You have to enter the same username and password which has
already been defined on the Virtual HUB of VPN Server.

Please note that you have to create an user on the Virtual HUB in advance.

If there are two or more Virtual HUBs on the VPN Server, you have to specify
the username as:

  "Username@Virtual-HUB-Name"

or:

  "Virtual-HUB-Name\Username"

to choose which Virtual HUB to be connected. You can also choose which
Virtual HUB should be elected as a "Default HUB" when the specification of
the name of Virtual HUB will be omitted.

Please be advised that you can make OpenVPN to enter the username and password
automatically without showing a prompt. How to do it is described on the
OpenVPN manual.


* 4. About Protocol and Port Number
Both TCP and UDP are available to connect to the VPN Server by OpenVPN.

If you use TCP, the port number is same as any of the "TCP Listener Port" on
the VPN Server which is originally defined in order to accept inbound
TCP-based VPN Client session.

If you use UDP, the port number must be one of UDP ports which are defined on
the VPN Server configuration in advance. Do not confuse between TCP and UDP
since they are not concerned mutually.

You can also specify the proxy-server address if the connection should be
relayed by the proxy-server. Specify it on the configuration file.


* 5. Closing
OpenVPN is independent software from PacketiX VPN / SoftEther VPN.
It is an open-source application which was developer by third-party.
Refer to http://openvpn.net/ if you need more how to use OpenVPN.
