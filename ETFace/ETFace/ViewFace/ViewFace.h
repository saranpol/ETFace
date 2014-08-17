//
//  ViewFace.h
//  ETFace
//
//  Created by saranpol on 8/12/2557 BE.
//  Copyright (c) 2557 hlpth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewFace : UIViewController

@property (nonatomic, assign) BOOL mIsMale;
@property (nonatomic, assign) NSInteger mSelectIndex;

@property (nonatomic, assign) NSInteger mIndex1;
@property (nonatomic, assign) NSInteger mIndex2;
@property (nonatomic, assign) NSInteger mIndex3;
@property (nonatomic, assign) NSInteger mIndex4;
@property (nonatomic, assign) NSInteger mIndex5;
@property (nonatomic, assign) NSInteger mIndex6;
@property (nonatomic, assign) NSInteger mIndex7;
@property (nonatomic, assign) NSInteger mIndex8;
@property (nonatomic, assign) NSInteger mIndex9;
@property (nonatomic, assign) NSInteger mIndex10;
@property (nonatomic, assign) NSInteger mIndex11;
@property (nonatomic, assign) NSInteger mIndex12;


@property (nonatomic, weak) IBOutlet UIView *mViewContent;

@property (nonatomic, weak) IBOutlet UIView *mViewTool;
@property (nonatomic, weak) IBOutlet UIView *mViewHowTo;
@property (nonatomic, weak) IBOutlet UILabel *mLabelTitle;
@property (nonatomic, weak) IBOutlet UIImageView *mImage1;
@property (nonatomic, weak) IBOutlet UIImageView *mImage2;
@property (nonatomic, weak) IBOutlet UIImageView *mImage3;
@property (nonatomic, weak) IBOutlet UIImageView *mImage4;
@property (nonatomic, weak) IBOutlet UIImageView *mImage5;
@property (nonatomic, weak) IBOutlet UIImageView *mImage6;
@property (nonatomic, weak) IBOutlet UIImageView *mImage7;
@property (nonatomic, weak) IBOutlet UIImageView *mImage8;
@property (nonatomic, weak) IBOutlet UIImageView *mImage9;
@property (nonatomic, weak) IBOutlet UIImageView *mImage10;
@property (nonatomic, weak) IBOutlet UIImageView *mImage11;
@property (nonatomic, weak) IBOutlet UIImageView *mImage12;


@property (nonatomic, weak) IBOutlet UIButton *mButton1;
@property (nonatomic, weak) IBOutlet UIButton *mButton2;
@property (nonatomic, weak) IBOutlet UIButton *mButton3;
@property (nonatomic, weak) IBOutlet UIButton *mButton4;
@property (nonatomic, weak) IBOutlet UIButton *mButton5;
@property (nonatomic, weak) IBOutlet UIButton *mButton6;
@property (nonatomic, weak) IBOutlet UIButton *mButton7;
@property (nonatomic, weak) IBOutlet UIButton *mButton8;
@property (nonatomic, weak) IBOutlet UIButton *mButton9;
@property (nonatomic, weak) IBOutlet UIButton *mButton10;
@property (nonatomic, weak) IBOutlet UIButton *mButton11;
@property (nonatomic, weak) IBOutlet UIButton *mButton12;

@property (nonatomic, strong) NSArray *mArray1;
@property (nonatomic, strong) NSArray *mArray2;
@property (nonatomic, strong) NSArray *mArray3;
@property (nonatomic, strong) NSArray *mArray4;
@property (nonatomic, strong) NSArray *mArray5;
@property (nonatomic, strong) NSArray *mArray6;
@property (nonatomic, strong) NSArray *mArray7;
@property (nonatomic, strong) NSArray *mArray8;
@property (nonatomic, strong) NSArray *mArray9;
@property (nonatomic, strong) NSArray *mArray10;
@property (nonatomic, strong) NSArray *mArray11;
@property (nonatomic, strong) NSArray *mArray12;


- (IBAction)clickTool:(id)sender;
- (IBAction)clickSelectIndex:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)clickBack:(id)sender;
- (IBAction)clickCloseHowTo:(id)sender;
- (IBAction)clickNext:(id)sender;

@end
