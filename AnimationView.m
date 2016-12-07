//
//  AnimationView.m
//  test
//
//  Created by 周超 on 2016/12/5.
//  Copyright © 2016年 周超. All rights reserved.
//

#import "AnimationView.h"
@interface AnimationView()
@property(nonatomic,assign)CGFloat ArmY;
@property(nonatomic,assign)CGFloat leftArmX;
@property(nonatomic,assign)CGFloat rightArmX;
@property(nonatomic,assign)BOOL * isClose;
@end
@implementation AnimationView

+(instancetype)newAnimationView{
    return [[NSBundle mainBundle] loadNibNamed:@"AnimationView" owner:nil options:nil][0];
}

-(void)awakeFromNib{
    [super awakeFromNib];
    _isClose=false;
    //手臂Y轴偏移量
    _ArmY=self.bounds.size.height-_leftArm.frame.origin.y;
    //左手臂X轴偏移量
    _leftArmX=-_leftArm.frame.origin.x;
    //右手臂X轴偏移量
    _rightArmX=self.bounds.size.width-_rightArm.frame.origin.x;
    
//    [UIView animateWithDuration:5 animations:^{
    _leftArm.transform=CGAffineTransformMakeTranslation(_leftArmX, _ArmY);
    _rightArm.transform=CGAffineTransformMakeTranslation(_rightArmX, _ArmY);
//    }];
}

-(void )startAnimation{
    if (!_isClose) {
        [UIView animateWithDuration:0.25 animations:^{
            _leftArm.transform=CGAffineTransformIdentity;
            _rightArm.transform=CGAffineTransformIdentity;
            _leftHand.transform=CGAffineTransformMakeTranslation(-_leftArmX, -_ArmY);
            _rightHand.transform =CGAffineTransformMakeTranslation(-_rightArmX+_rightHand.frame.size.width, -_ArmY);
            _leftHand.transform =CGAffineTransformScale(_leftHand.transform, 0.01, 0.01);
            _rightHand.transform=CGAffineTransformScale(_rightHand.transform, 0.01, 0.01);
        }];
        _isClose=YES;

    }else{
        _isClose=false;
        [UIView animateWithDuration:0.25 animations:^{
            _leftHand.transform=CGAffineTransformIdentity;
            _rightHand.transform=CGAffineTransformIdentity;
            _leftArm.transform=CGAffineTransformMakeTranslation(_leftArmX, _ArmY);
            _rightArm.transform=CGAffineTransformMakeTranslation(_rightArmX, _ArmY);

            
                                                   
        }];
        
    }
    

    
}




@end
