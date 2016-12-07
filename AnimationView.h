//
//  AnimationView.h
//  test
//
//  Created by 周超 on 2016/12/5.
//  Copyright © 2016年 周超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *leftHand;
@property (weak, nonatomic) IBOutlet UIImageView *rightHand;
@property (weak, nonatomic) IBOutlet UIImageView *leftArm;
@property (weak, nonatomic) IBOutlet UIImageView *rightArm;
+(instancetype)newAnimationView;
-(void )startAnimation;
@end
