#!/bin/bash

# Remove Old Config
openvpn3 config-remove --config myITSVPN

# Import New Config :
openvpn3 config-import --config myitsvpn-{FILL_NRP}@student.its.ac.id.ovpn --name myITSVPN --persistent

# Adjust Settings (allow compression) :
openvpn3 config-manage --config myITSVPN --allow-compression yes

# Start VPN Session : (auth username=nrp@student.its.ac.id, auth password={passwordmyits}
openvpn3 session-start --dco true --config myITSVPN
