//
//  RoundedImageView.m
//  justunfollow
//
//  Created by siddarth chaturvedi on 18/05/13.
//  Copyright (c) 2013 siddarth chaturvedi. All rights reserved.
//

#import "RoundedImageView.h"
#import <QuartzCore/QuartzCore.h>


@implementation RoundedImageView

@synthesize image = _image;
@synthesize backgroundImage = _backgroundImage;
@synthesize imageOffset = _imageOffset;


- (void)setImage:(UIImage *)image {
    
    //Claering the background color.
    self.backgroundColor = [UIColor clearColor];
    
    //Assaigng the image.
    _image = image;
}


- (void)drawRect:(CGRect)rect {
    
    //Drawing the background image as it is in UIView bounderies.
    [self.backgroundImage drawInRect:self.bounds];
    
    //Customized drawing begins here.
    
    //For customized drawing we need the current grahics context
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //Pushing a copy of the current graphics state onto the stack of graphics states.
    CGContextSaveGState(context);
    
    //Making a rect in which we have to draw the user profile image.
    //Cosidering appropriate imageoffset in mind.
    CGRect clipRect = CGRectMake(self.imageOffset, self.imageOffset, self.frame.size.width-(self.imageOffset*2), self.frame.size.height-(self.imageOffset*2));
    
    //Adding an ellipse that fits inside the specified rectangle.
    CGContextAddEllipseInRect(context, clipRect);
    
    //Modifies the current cipping path
    CGContextClip(context);
    
    //It will paints a transparent rectangle. If we don't do that we cant see the user profile image.
    //User profile image will be drawing over it.
    CGContextClearRect(context, clipRect);
    
    //Drawing the image in particular clipped rect which is will provide a circular shape.
    [self.image drawInRect:CGRectMake(clipRect.origin.x, clipRect.origin.y, clipRect.size.width, clipRect.size.height)];
    
    //Restoring previously saved graphics state.
    CGContextRestoreGState(context);
}

@end
