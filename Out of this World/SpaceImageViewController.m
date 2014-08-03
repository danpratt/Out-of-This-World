//
//  SpaceImageViewController.m
//  Out of this World
//
//  Created by Daniel Pratt on 8/2/14.
//  Copyright (c) 2014 Daniel Pratt. All rights reserved.
//

#import "SpaceImageViewController.h"

@interface SpaceImageViewController ()

@end

@implementation SpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [[UIImageView alloc] initWithImage:_spaceObject.spaceImage];
    _scrollView.contentSize = _imageView.frame.size;
    [_scrollView addSubview:_imageView];
    _scrollView.delegate = self;
    _scrollView.maximumZoomScale = 2.0;
    _scrollView.minimumZoomScale = 0.5;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _imageView;
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
