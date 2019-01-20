# Speech Mirror

This project was originally built for the 2019 TOM: Vanderbilt Makeathon. 

####  Problem statement:
People with hearing impairments often experience difficulties communicating in settings with a large amount of background noise. Often the issue is not being able to hear another party speaking, but rather discerning the words being spoken. 

#### Goal:
Using a mobile device, build an app with speech-to-text capabilities to help facilitate communication with an individual who has hearing impairment.

#### The solution:
An iOS app with a companion watchOS app was chosen as the solution for the straightforward APIs for both speech-to-text (Apple's `Speech` framework) and inter-device communication (Apple's `WatchConnectivity` framework).

The iOS app sets up a basic audio session and passes it to the Speech framework for processing. Once the speech has been process, the result is sent to the watchOS app where it is displayed on screen for the hearing impaired to view.

For more information on these frameowrks and more in-depth sample code for how each works, check out Apple's demo code:
Speech framework: https://developer.apple.com/documentation/speech/recognizing_speech_in_live_audio
WatchConnectivity framework: https://developer.apple.com/documentation/watchconnectivity/using_watch_connectivity_to_communicate_between_your_apple_watch_app_and_iphone_app
