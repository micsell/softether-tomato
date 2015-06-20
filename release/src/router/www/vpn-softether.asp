<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0//EN'>
<!--
	Tomato GUI
	Copyright (C) 2006-2010 Jonathan Zarate
	http://www.polarcloud.com/tomato/

	For use with Tomato Firmware only.
	No part of this file may be used without permission.
-->
<html>
<head>
<meta http-equiv='content-type' content='text/html;charset=utf-8'>
<meta name='robots' content='noindex,nofollow'>
<title>[<% ident(); %>] SoftEther VPN</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("softether_enable,softether_ipaddr,softether_sip,softether_ifname,softether_ra,lan_ifname,lan1_ifname,lan2_ifname,lan3_ifname"); %>

function save()
{
	var fom;
	var en;
	var s;

	fom = E('_fom');
	en = fom.f_softether_enable.checked;
	fom.softether_enable.value = en ? 1 : 0;
	form.submit(fom, 0);
}

</script>

</head>
<body>
<form id='_fom' method='post' action='tomato.cgi'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>Tomato</div>
	<div class='version'>Version <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<input type='hidden' name='_nextpage' value='vpn-softether.asp'>
<input type='hidden' name='_service' value='firewall-restart'>

<input type='hidden' name='softether_enable'>

<div class='section-title'>SoftEther VPN</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: 'Enable SoftEther VPN', name: 'f_softether_enable', type: 'checkbox', value: (nvram.softether_enable == '1') } 
]);
</script>
</div>

<br>
<script type='text/javascript'>if (nvram.softether_enable == '1') show_notice1('<% notice("iptables"); %>');</script>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='Save' id='save-button' onclick='save()'>
	<input type='button' value='Cancel' id='cancel-button' onclick='reloadPage();'>
</td></tr>
</table>
</form>
</body>
</html>

