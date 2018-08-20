//
//  ViewController.h
//  SOCKS
//
//  Created by Robert Xiao on 8/19/18.
//  Copyright © 2018 Robert Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong) AVAudioPlayer *audioPlayer;

@end

