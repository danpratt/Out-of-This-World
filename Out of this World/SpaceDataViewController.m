//
//  SpaceDataViewController.m
//  Out of this World
//
//  Created by Daniel Pratt on 8/7/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import "SpaceDataViewController.h"

@interface SpaceDataViewController ()

@end

@implementation SpaceDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    _tableView.backgroundColor = [UIColor clearColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Nickname:";
            cell.detailTextLabel.text = _spaceObject.nickName;
            break;
        
        case 1:
            cell.textLabel.text = @"Diameter in km:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", _spaceObject.diameter];
            break;
        
        case 2:
            cell.textLabel.text = @"Gravitational Foce:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", _spaceObject.gravitationalForce];
            break;
            
        case 3:
            cell.textLabel.text = @"Length of a Year in Days:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", _spaceObject.yearLength];
            break;
            
        case 4:
            cell.textLabel.text = @"Length of Day in Hours:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", _spaceObject.dayLength];
            break;
            
        case 5:
            cell.textLabel.text = @"Temperature in C:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", _spaceObject.temperature];
            break;
            
        case 6:
            cell.textLabel.text = @"Number of moons:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", _spaceObject.numberOfMoons];
            break;
            
        case 7:
            cell.textLabel.text = @"Interesting Fact:";
            cell.detailTextLabel.text = _spaceObject.interestingFact;
            break;
            
        default:
            break;
    }
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
