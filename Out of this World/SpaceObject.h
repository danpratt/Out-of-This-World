//
//  SpaceObject.h
//  Out of this World
//
//  Created by Daniel Pratt on 7/31/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *nickName;
@property (strong, nonatomic) NSString *interestingFact;

@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;

@property (strong, nonatomic) UIImage *spaceImage;


-(id)initWithData: (NSDictionary *) data andImage:(UIImage *) image;

@end
