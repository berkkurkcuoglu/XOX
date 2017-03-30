//
//  ViewController.m
//  XOX
//
//  Created by berk on 3/30/17.
//  Copyright © 2017 berk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for(UIImageView *cell in _cells){
        [cell setImage:[UIImage imageNamed:@"xicon.png"]];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapped1:(id)sender {
}
- (IBAction)tapped2:(id)sender {
}
- (IBAction)tapped3:(id)sender {
}
- (IBAction)tapped4:(id)sender {
}
- (IBAction)tapped5:(id)sender {
}
- (IBAction)tapped6:(id)sender {
}
- (IBAction)tapped7:(id)sender {
}
- (IBAction)tapped8:(id)sender {
}
- (IBAction)tapped9:(id)sender {
}

@end
