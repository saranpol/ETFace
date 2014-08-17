//
//  ViewFace.m
//  ETFace
//
//  Created by saranpol on 8/12/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import "ViewFace.h"
#import "API.h"

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
@synthesize mIndex12;

@synthesize mViewContent;

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
@synthesize mImage12;

@synthesize mButton1;
@synthesize mButton2;
@synthesize mButton3;
@synthesize mButton4;
@synthesize mButton5;
@synthesize mButton6;
@synthesize mButton7;
@synthesize mButton8;
@synthesize mButton9;
@synthesize mButton10;
@synthesize mButton11;
@synthesize mButton12;

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
@synthesize mArray12;

@synthesize mIsMale;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mSelectIndex = 0;
    [self updateTitle];
    
    if(mIsMale){
        [mButton1 setImage:[UIImage imageNamed:@"nav-m-1-eye.png"] forState:UIControlStateNormal];
        [mButton2 setImage:[UIImage imageNamed:@"nav-m-2-mouth.png"] forState:UIControlStateNormal];
        [mButton3 setImage:[UIImage imageNamed:@"nav-m-3-hair.png"] forState:UIControlStateNormal];
        
        [mButton4 setHidden:YES];
        [mButton5 setHidden:YES];
        [mButton6 setHidden:YES];
        [mButton7 setHidden:YES];
        [mButton8 setHidden:YES];
        [mButton9 setHidden:YES];
        [mButton10 setHidden:YES];
        [mButton11 setHidden:YES];
        [mButton12 setHidden:YES];
        
        // Eye
        self.mArray1 = @[@"man-eye-02.png", @"man-eye-01.png", @"man-eye-03.png"];
        // Mouth
        self.mArray2 = @[@"man-mouth-03.png", @"man-mouth-02.png", @"man-mouth-01.png"];
        // Hair
        self.mArray3 = @[@"man-hair-03.png", @"man-hair-02.png", @"man-hair-01.png"];

        self.mArray4 = @[@"man-brow-01.png"];
        self.mArray5 = @[@"man-nose-01.png"];
        self.mArray6 = @[@"man-face-01.png"];
        self.mArray7 = @[@"man-body-01.png"];
        self.mArray8 = @[@""];
        self.mArray9 = @[@""];
        self.mArray10 = @[@""];
        self.mArray11 = @[@""];
        self.mArray12 = @[@""];
    }else{
        // Cheek
        self.mArray1 = @[@"woman-cheek-02.png", @"woman-cheek-01.png"];
        // Ear
        self.mArray2 = @[@"woman-ear-02.png", @"woman-ear-01.png", @"woman-ear-03.png", @"woman-ear-04.png"];
        // Nose
        self.mArray3 = @[@"woman-nose-02.png", @"woman-nose-01.png"];
        // Brow
        self.mArray4 = @[@"woman-brow-02.png", @"woman-brow-01.png", @"woman-brow-03.png", @"woman-brow-04.png", @"woman-brow-05.png", @"woman-brow-06.png"];
        // Eye
        self.mArray5 = @[@"woman-eye-02.png", @"woman-eye-01.png", @"woman-eye-03.png", @"woman-eye-04.png", @"woman-eye-05.png", @"woman-eye-06.png", @"woman-eye-07.png", @"woman-eye-08.png", @"woman-eye-09.png", @"woman-eye-10.png"];
        // mouth
        self.mArray6 = @[@"woman-mouth-04.png", @"woman-mouth-02.png", @"woman-mouth-03.png", @"woman-mouth-01.png", @"woman-mouth-05.png", @"woman-mouth-06.png", @"woman-mouth-07.png", @"woman-mouth-08.png", @"woman-mouth-09.png", @"woman-mouth-10.png"];
        // Hair 1
        self.mArray7 = @[@"woman-hair1-01.png", @"woman-hair1-02.png", @"woman-hair1-03.png"];
        // Hair 2
        self.mArray8 = @[@"woman-hair2-02.png", @"woman-hair2-01.png", @"woman-hair2-03.png", @"woman-hair2-04.png"];
        // Face
        self.mArray9 = @[@"woman-face-05.png", @"woman-face-02.png", @"woman-face-03.png", @"woman-face-04.png", @"woman-face-01.png"];
        // Bow
        self.mArray10 = @[@"woman-bow-01.png", @"woman-bow-02.png"];
        // Body
        self.mArray11 = @[@"woman-body-02.png", @"woman-body-01.png", @"woman-body-03.png"];
        // Hair 3
        self.mArray12 = @[@"woman-hair3-05.png", @"woman-hair3-02.png", @"woman-hair3-03.png", @"woman-hair3-04.png", @"woman-hair3-01.png", @"woman-hair3-06.png"];
    }

    
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
    [mImage12 setImage:[UIImage imageNamed:[mArray12 objectAtIndex:mIndex12]]];
}

- (void)updateCurrentIndex {
    if(!mSelectIndex)
        return;
    
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
        case 12:
            [mImage12 setImage:[UIImage imageNamed:[mArray12 objectAtIndex:mIndex12]]];
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
        case 0:
            [mLabelTitle setText:@"SELECT"];
            break;
        case 1:
            if(mIsMale)
                [mLabelTitle setText:@"EYE"];
            else
                [mLabelTitle setText:@"CHEEK"];
            break;
        case 2:
            if(mIsMale)
                [mLabelTitle setText:@"MOUTH"];
            else
                [mLabelTitle setText:@"EAR"];
            break;
        case 3:
            if(mIsMale)
                [mLabelTitle setText:@"HAIR"];
            else
                [mLabelTitle setText:@"NOSE"];
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
            [mLabelTitle setText:@"BODY"];
            break;
        case 12:
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
    [self updateTitle];
}

- (void)hideTool {
    [UIView animateWithDuration:0.3 animations:^{
        [mViewTool setAlpha:0.0];
    } completion:^(BOOL finished){
        [mViewTool setHidden:YES];
    }];
    [self updateTitle];
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
        case 12:
            mIndex12 = (mIndex12==0) ? [mArray12 count]-1 : mIndex12 - 1;
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
        case 12:
            mIndex12 = ((mIndex12 + 1) >= [mArray12 count]) ? 0 : mIndex12 + 1;
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

- (UIImage*)resize:(UIImage*)image {
    //UIGraphicsBeginImageContext(newSize);
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(768, 1024), NO, 1.0);
    [image drawInRect:CGRectMake(0, 0, 768, 1024)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage*)saveImage {
    UIImage* image;
    //UIGraphicsBeginImageContext(mViewContent.frame.size);
    //UIGraphicsBeginImageContextWithOptions(mViewContent.bounds.size, self.view.opaque, 0.0);
    UIGraphicsBeginImageContextWithOptions(mViewContent.bounds.size, NO, 0.0);
    [mViewContent.layer renderInContext:UIGraphicsGetCurrentContext()];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    image = [self resize:image];

//    NSData* imageData =  UIImagePNGRepresentation(image);     // get png representation
//    UIImage* pngImage = [UIImage imageWithData:imageData];    // rewrap
//    UIImageWriteToSavedPhotosAlbum(pngImage, nil, nil, nil);
//    //    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);

    
    return image;
}


- (IBAction)clickNext:(id)sender {
    API *a = [API getAPI];
    a.mImageCurrent = [self saveImage];
    [self performSegueWithIdentifier:@"GoSubmit" sender:sender];
}

@end
