//
//  ViewSubmit.m
//  ETFace
//
//  Created by saranpol on 7/30/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import "ViewSubmit.h"


@implementation ViewSubmit

@synthesize mTextFieldName;
@synthesize mTextFieldEmail;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([mTextFieldName respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor lightGrayColor];
        mTextFieldName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:mTextFieldName.placeholder attributes:@{NSForegroundColorAttributeName: color}];
    }
    if ([mTextFieldEmail respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor lightGrayColor];
        mTextFieldEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:mTextFieldEmail.placeholder attributes:@{NSForegroundColorAttributeName: color}];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clickBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
