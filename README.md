# Looking for contributors

Hey there, I'm looking for active contributors to help move the development of this forward in a stable and timely fashion. This module was created for a specific project and I haven't had a need for this module in quite some time, so my personal time is not actively allocated to it. If you are interested in actively contributing, please contact me, Thanks!

# Background Audio for iOS

Support an iOS application playing audio in the background.

When included within a cordova build then the application will support background audio for iOS
out of the box. No further action is necessary.

This negates having to use location/other solutions that may not be accepted by Apple.

# Installation

## Cordova

    cordova plugin add cordova-plugin-background-audio
    # OR
    cordova plugin add https://github.com/danielsogl/cordova-plugin-background-audio.git # latest

## Ionic

    ionic plugin add cordova-plugin-background-audio
    # OR
    ionic plugin add https://github.com/danielsogl/cordova-plugin-background-audio.git # latest

## PhoneGap

    phonegap local plugin add cordova-plugin-background-audio
    # or
    phonegap local plugin add https://github.com/danielsogl/cordova-plugin-background-audio.git # latest

### PhoneGap Build (build.phonegap.com)

**DEPRECATED**.. no longer seems to work? Possibly requires updating the plugin to latest pgb spec?
see [#9](/../../issues/9)

Add the following to your `config.xml`

    <gap:plugin name="cordova-plugin-background-audio" />
