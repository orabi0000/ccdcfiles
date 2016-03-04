Function Configure-Networking-CCDC {
	new-netfirewallrule -displayname HTTP-out -direction outbound -action allow -protocol tcp -localport 80,443
	new-netfirewallrule -displayname HTTP-in -direction inbound -action allow -protocol tcp -localport 80,443
	new-netfirewallrule -displayname DNS-out -direction outbound -action allow -protocol tcp -localport 53
	
	set-netfirewallprofile domain,public,private -enabled true -DefaultInboundAction Block -DefaultOutboundAction Block
	set-NetConnectionProfile -interfacealias ethernet -NetworkCategory private # can't set profile to domain (enforced by domain membership)
	
	set-net6to4configuration -state disabled
	set-netteredoconfiguration -type disabled
	set-netisatapconfiguration -state disabled
}
Configure-Networking-CCDC
