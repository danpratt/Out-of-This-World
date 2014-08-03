//
//  SpaceImageViewController.h
//  Out of this World
//
//  Created by Daniel Pratt on 8/2/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) SpaceObject *spaceObject;


@end
