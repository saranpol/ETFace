//
//  ETViewController.m
//  ETFace
//
//  Created by saranpol on 7/30/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import "ETViewController.h"
#import "ViewFace.h"

@implementation ETViewController

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewFace *v = [segue destinationViewController];
    
    if ([[segue identifier] isEqualToString:@"Male"]) {
        v.mIsMale = YES;
    }
    
    if ([[segue identifier] isEqualToString:@"Female"]) {
        v.mIsMale = NO;
    }
}
@end
