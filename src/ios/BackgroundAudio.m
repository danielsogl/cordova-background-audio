#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface BackgroundAudio : CDVPlugin
{}
@end

@implementation BackgroundAudio

- (void)pluginInitialize {
    BOOL usesMusicControls = [self.commandDelegate.settings objectForKey:[@"usesMusicControls" lowercaseString]];
    // initializations go here.
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    BOOL ok;
    NSError *setCategoryError = nil;

    if (usesMusicControls) {
        ok = [audioSession setCategory:AVAudioSessionCategoryPlayback
                withOptions:0
                error:&setCategoryError];
    } else {
        ok = [audioSession setCategory:AVAudioSessionCategoryPlayback
                withOptions:AVAudioSessionCategoryOptionMixWithOthers
                error:&setCategoryError];
    }

    
    if (!ok) {
        NSLog(@"%s setCategoryError=%@", __PRETTY_FUNCTION__, setCategoryError);
    }
}

@end
