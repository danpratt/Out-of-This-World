//
//  SpaceObject.m
//  Out of this World
//
//  Created by Daniel Pratt on 7/31/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject

-(id) init {
    return [self initWithData:nil andImage:nil];
}

-(id) initWithData:(NSDictionary *)data andImage:(UIImage *)image {
    self = [super init];
    
    _name = data[PLANET_NAME];
    _nickName = data[PLANET_NICKNAME];
    _interestingFact = data[PLANET_INTERESTING_FACT];
    
    _gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    _diameter = [data[PLANET_DIAMETER] floatValue];
    _yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    _dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    _temperature = [data[PLANET_TEMPERATURE] floatValue];
    _numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    
    _spaceImage = image;
    
    return self;
}

@end
