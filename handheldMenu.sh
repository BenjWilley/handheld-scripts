#! /bin/bash

#enable GPS


#set canned message inputs/events
meshtastic --set canned_message.enabled true 
meshtastic --set canned_message.inputbroker_pin_a 16
meshtastic --set canned_message.inputbroker_pin_b 17
meshtastic --set canned_message.inputbroker_pin_press 18
meshtastic --set canned_message.inputbroker_event_cw Down
meshtastic --set canned_message.inputbroker_event_ccw Up
meshtastic --set canned_message.inputbroker_event_press Select

#set canned messages
meshtastic --set-canned-message "SOS|YES|NO|ALL CLEAR|GPS PING"



#SOS button
meshtastic --set detection_sensor.enabled true
meshtastic --set detection_sensor.minimum_broadcast_secs 5
meshtastic --set detection_sensor.state_broadcast_secs 1000

#SOS sensor name
meshtastic --set detection_sensor.name "Hiker SOS"
meshtastic --set detection_sensor.monitor_pin 15
meshtastic --set detection_sensor.detection_triggered_high true






