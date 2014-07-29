//
//  ViewSubmit.h
//  ETFace
//
//  Created by saranpol on 7/30/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewSubmit : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *mTextFieldName;
@property (nonatomic, weak) IBOutlet UITextField *mTextFieldEmail;

- (IBAction)clickBack:(id)sender;

@end
