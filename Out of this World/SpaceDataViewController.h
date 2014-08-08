//
//  SpaceDataViewController.h
//  Out of this World
//
//  Created by Daniel Pratt on 8/7/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceDataViewController : UIViewController //<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) SpaceObject *spaceObject;

@end
