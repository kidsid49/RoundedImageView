//
//  RoundedImageView.h
//  justunfollow
//
//  Created by siddarth chaturvedi on 18/05/13.
//  Copyright (c) 2013 siddarth chaturvedi. All rights reserved.
//

#import <UIKit/UIKit.h>


//Custom implimentation of UIImageView which renders images in rounded shape.
@interface RoundedImageView : UIView

//User Image
@property(strong,nonatomic) UIImage       *image;

//Background Image which will provide a circular boundry around image.
@property(strong,nonatomic) UIImage       *backgroundImage;

//Image offset that will define the background imageview's cirular boundry width.
@property(assign,nonatomic) float         imageOffset;

@end
