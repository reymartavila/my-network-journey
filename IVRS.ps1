﻿config t
dial-peer voice 69 voip
 service rivanaa out-bound
 destination-pattern 2169
 session target ipv4:10.21.100.8
 incoming called-number 2169
 dtmf-relay h245-alphanumeric
 codec g711ulaw
 no vad
!
telephony-service
 moh "flash:/en_bacd_music_on_hold.au"
!
application
 service rivanaa flash:app-b-acd-aa-3.0.0.2.tcl
  paramspace english index 1        
  param number-of-hunt-grps 2
  param dial-by-extension-option 8
  param handoff-string rivanaa
  param welcome-prompt flash:en_bacd_welcome.au
  paramspace english language en
  param call-retry-timer 15
  param service-name rivanqueue
  paramspace english location flash:
  param second-greeting-time 60
  param max-time-vm-retry 2
  param voice-mail 1234
  param max-time-call-retry 700
  param aa-pilot 2169
 service rivanqueue flash:app-b-acd-3.0.0.2.tcl
  param queue-len 15
  param aa-hunt1 2100
  param aa-hunt2 2177
  param aa-hunt3 2101
  param aa-hunt4 2133
  param queue-manager-debugs 1
  param number-of-hunt-grps 4