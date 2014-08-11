//
//  ViewFace.m
//  ETFace
//
//  Created by saranpol on 8/12/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import "ViewFace.h"


@implementation ViewFace

@synthesize mSelectIndex;
@synthesize mIndex1;
@synthesize mIndex2;
@synthesize mIndex3;
@synthesize mIndex4;
@synthesize mIndex5;
@synthesize mIndex6;
@synthesize mIndex7;
@synthesize mIndex8;
@synthesize mIndex9;
@synthesize mIndex10;
@synthesize mIndex11;


@synthesize mViewTool;
@synthesize mViewHowTo;
@synthesize mLabelTitle;

@synthesize mImage1;
@synthesize mImage2;
@synthesize mImage3;
@synthesize mImage4;
@synthesize mImage5;
@synthesize mImage6;
@synthesize mImage7;
@synthesize mImage8;
@synthesize mImage9;
@synthesize mImage10;
@synthesize mImage11;

@synthesize mArray1;
@synthesize mArray2;
@synthesize mArray3;
@synthesize mArray4;
@synthesize mArray5;
@synthesize mArray6;
@synthesize mArray7;
@synthesize mArray8;
@synthesize mArray9;
@synthesize mArray10;
@synthesize mArray11;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mSelectIndex = 1;
    [self updateTitle];
    
    self.mArray1 = @[@"", @"cheek-01.png"];
    self.mArray2 = @[@"", @"nose-01.png"];
    self.mArray3 = @[@"", @"ear-01.png"];
    self.mArray4 = @[@"", @"brow-01.png", @"brow-02.png", @"brow-03.png", @"brow-04.png", @"brow-05.png", @"brow-06.png", @"brow-07.png"];
    self.mArray5 = @[@"eye-05.png", @"eye-01.png", @"eye-02.png", @"eye-03.png", @"eye-04.png", @"eye-06.png", @"eye-07.png", @"eye-08.png"];
    self.mArray6 = @[@"mouth-06.png", @"mouth-01.png", @"mouth-02.png", @"mouth-03.png", @"mouth-04.png", @"mouth-05.png", @"mouth-07.png", @"mouth-08.png", @"mouth-09.png"];
    // Hair 1
    self.mArray7 = @[@"", @"hair-01.png", @"hair-02.png", @"hair-03.png", @"hair-04.png"];
    // Hair 2
    self.mArray8 = @[@"hair-05.png", @"hair-06.png", @"hair-07.png", @""];
    self.mArray9 = @[@"face-01.png", @"face-02.png", @"face-03.png", @"face-04.png", @"face-05.png"];
    self.mArray10 = @[@"", @"bow-01.png"];
    // Hair 3
    self.mArray11 = @[@"", @"hairback-08.png", @"hairback-09.png", @"hairback-10.png", @"hairback-11.png", @"hairback-12.png"];
    
    [self updateDefaultImage];
}


- (void)updateDefaultImage {
    [mImage1 setImage:[UIImage imageNamed:[mArray1 objectAtIndex:mIndex1]]];
    [mImage2 setImage:[UIImage imageNamed:[mArray2 objectAtIndex:mIndex2]]];
    [mImage3 setImage:[UIImage imageNamed:[mArray3 objectAtIndex:mIndex3]]];
    [mImage4 setImage:[UIImage imageNamed:[mArray4 objectAtIndex:mIndex4]]];
    [mImage5 setImage:[UIImage imageNamed:[mArray5 objectAtIndex:mIndex5]]];
    [mImage6 setImage:[UIImage imageNamed:[mArray6 objectAtIndex:mIndex6]]];
    [mImage7 setImage:[UIImage imageNamed:[mArray7 objectAtIndex:mIndex7]]];
    [mImage8 setImage:[UIImage imageNamed:[mArray8 objectAtIndex:mIndex8]]];
    [mImage9 setImage:[UIImage imageNamed:[mArray9 objectAtIndex:mIndex9]]];
    [mImage10 setImage:[UIImage imageNamed:[mArray10 objectAtIndex:mIndex10]]];
    [mImage11 setImage:[UIImage imageNamed:[mArray11 objectAtIndex:mIndex11]]];
}

- (void)updateCurrentIndex {
    switch (mSelectIndex) {
        case 1:
            [mImage1 setImage:[UIImage imageNamed:[mArray1 objectAtIndex:mIndex1]]];
            break;
        case 2:
            [mImage2 setImage:[UIImage imageNamed:[mArray2 objectAtIndex:mIndex2]]];
            break;
        case 3:
            [mImage3 setImage:[UIImage imageNamed:[mArray3 objectAtIndex:mIndex3]]];
            break;
        case 4:
            [mImage4 setImage:[UIImage imageNamed:[mArray4 objectAtIndex:mIndex4]]];
            break;
        case 5:
            [mImage5 setImage:[UIImage imageNamed:[mArray5 objectAtIndex:mIndex5]]];
            break;
        case 6:
            [mImage6 setImage:[UIImage imageNamed:[mArray6 objectAtIndex:mIndex6]]];
            break;
        case 7:
            [mImage7 setImage:[UIImage imageNamed:[mArray7 objectAtIndex:mIndex7]]];
            break;
        case 8:
            [mImage8 setImage:[UIImage imageNamed:[mArray8 objectAtIndex:mIndex8]]];
            break;
        case 9:
            [mImage9 setImage:[UIImage imageNamed:[mArray9 objectAtIndex:mIndex9]]];
            break;
        case 10:
            [mImage10 setImage:[UIImage imageNamed:[mArray10 objectAtIndex:mIndex10]]];
            break;
        case 11:
            [mImage11 setImage:[UIImage imageNamed:[mArray11 objectAtIndex:mIndex11]]];
            break;
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

- (void)updateTitle {
    switch (mSelectIndex) {
        case 1:
            [mLabelTitle setText:@"CHEEK"];
            break;
        case 2:
            [mLabelTitle setText:@"NOSE"];
            break;
        case 3:
            [mLabelTitle setText:@"EAR"];
            break;
        case 4:
            [mLabelTitle setText:@"BROW"];
            break;
        case 5:
            [mLabelTitle setText:@"EYE"];
            break;
        case 6:
            [mLabelTitle setText:@"MOUTH"];
            break;
        case 7:
            [mLabelTitle setText:@"HAIR 1"];
            break;
        case 8:
            [mLabelTitle setText:@"HAIR 2"];
            break;
        case 9:
            [mLabelTitle setText:@"FACE"];
            break;
        case 10:
            [mLabelTitle setText:@"BOW"];
            break;
        case 11:
            [mLabelTitle setText:@"HAIR 3"];
            break;
    }
}


- (void)showTool {
    [mViewTool setHidden:NO];
    [mViewTool setAlpha:0.0];
    [UIView animateWithDuration:0.3 animations:^{
        [mViewTool setAlpha:1.0];
    }];
    [mLabelTitle setText:@"SELECT"];
}

- (void)hideTool {
    [UIView animateWithDuration:0.3 animations:^{
        [mViewTool setAlpha:0.0];
    } completion:^(BOOL finished){
        [mViewTool setHidden:YES];
    }];
}

- (IBAction)clickTool:(id)sender {
    if(mViewTool.hidden){
        [self showTool];
    }else{
        [self hideTool];
    }
}



- (IBAction)clickSelectIndex:(id)sender {
    UIButton *b = (UIButton*)sender;
    self.mSelectIndex = b.tag;
    [self hideTool];
    [self updateTitle];
}

- (IBAction)swipeRight:(id)sender {
    switch (mSelectIndex) {
        case 1:
            mIndex1 = (mIndex1==0) ? [mArray1 count]-1 : mIndex1 - 1;
            break;
        case 2:
            mIndex2 = (mIndex2==0) ? [mArray2 count]-1 : mIndex2 - 1;
            break;
        case 3:
            mIndex3 = (mIndex3==0) ? [mArray3 count]-1 : mIndex3 - 1;
            break;
        case 4:
            mIndex4 = (mIndex4==0) ? [mArray4 count]-1 : mIndex4 - 1;
            break;
        case 5:
            mIndex5 = (mIndex5==0) ? [mArray5 count]-1 : mIndex5 - 1;
            break;
        case 6:
            mIndex6 = (mIndex6==0) ? [mArray6 count]-1 : mIndex6 - 1;
            break;
        case 7:
            mIndex7 = (mIndex7==0) ? [mArray7 count]-1 : mIndex7 - 1;
            break;
        case 8:
            mIndex8 = (mIndex8==0) ? [mArray8 count]-1 : mIndex8 - 1;
            break;
        case 9:
            mIndex9 = (mIndex9==0) ? [mArray9 count]-1 : mIndex9 - 1;
            break;
        case 10:
            mIndex10 = (mIndex10==0) ? [mArray10 count]-1 : mIndex10 - 1;
            break;
        case 11:
            mIndex11 = (mIndex11==0) ? [mArray11 count]-1 : mIndex11 - 1;
            break;
    }
    
    [self updateCurrentIndex];
}

- (IBAction)swipeLeft:(id)sender {
    switch (mSelectIndex) {
        case 1:
            mIndex1 = ((mIndex1 + 1) >= [mArray1 count]) ? 0 : mIndex1 + 1;
            break;
        case 2:
            mIndex2 = ((mIndex2 + 1) >= [mArray2 count]) ? 0 : mIndex2 + 1;
            break;
        case 3:
            mIndex3 = ((mIndex3 + 1) >= [mArray3 count]) ? 0 : mIndex3 + 1;
            break;
        case 4:
            mIndex4 = ((mIndex4 + 1) >= [mArray4 count]) ? 0 : mIndex4 + 1;
            break;
        case 5:
            mIndex5 = ((mIndex5 + 1) >= [mArray5 count]) ? 0 : mIndex5 + 1;
            break;
        case 6:
            mIndex6 = ((mIndex6 + 1) >= [mArray6 count]) ? 0 : mIndex6 + 1;
            break;
        case 7:
            mIndex7 = ((mIndex7 + 1) >= [mArray7 count]) ? 0 : mIndex7 + 1;
            break;
        case 8:
            mIndex8 = ((mIndex8 + 1) >= [mArray8 count]) ? 0 : mIndex8 + 1;
            break;
        case 9:
            mIndex9 = ((mIndex9 + 1) >= [mArray9 count]) ? 0 : mIndex9 + 1;
            break;
        case 10:
            mIndex10 = ((mIndex10 + 1) >= [mArray10 count]) ? 0 : mIndex10 + 1;
            break;
        case 11:
            mIndex11 = ((mIndex11 + 1) >= [mArray11 count]) ? 0 : mIndex11 + 1;
            break;
    }
    [self updateCurrentIndex];
}

- (IBAction)clickBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clickCloseHowTo:(id)sender {
    [UIView animateWithDuration:0.3
                     animations:^{
                         [mViewHowTo setAlpha:0];
                     }completion:^(BOOL finished){
                         [mViewHowTo setHidden:YES];
                     }];
}

@end
