//
//  ViewController.m
//  SOCKS
//
//  Created by Robert Xiao on 8/19/18.
//  Copyright © 2018 Robert Xiao. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

extern int socks_main(int argc, const char** argv);

- (void)viewDidLoad {
    [super viewDidLoad];

    int port = 4884;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        char portbuf[32];
        sprintf(portbuf, "%d", port);
        const char *argv[] = {"microsocks", "-p", portbuf, NULL};

        dispatch_async(dispatch_get_main_queue(), ^{
            [[self statusLabel] setText:[NSString stringWithFormat:@"Running at %@:%d", [AppDelegate deviceIPAddress], port]];
        });

        int status = socks_main(3, argv);

        dispatch_async(dispatch_get_main_queue(), ^{
            [[self statusLabel] setText:[NSString stringWithFormat:@"Failed to start: %d", status]];
        });
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
