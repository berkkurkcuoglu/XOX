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
    /*for(UIImageView *cell in _cells){
        [cell setImage:[UIImage imageNamed:@"xicon.png"]];
    }*/
    _turn = 0;
    [self start];
}

-(void) start{
    _cellValues = [[NSMutableArray alloc] init];
    for(int i =0; i < 9; i++){       
        [_cellValues addObject:[NSNumber numberWithInteger:-1]];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    //NSLog(@"X location: %f", location.x);
    //NSLog(@"Y Location: %f",location.y);
    for(UIImageView *cell in _cells){
        if(CGRectContainsPoint([cell frame], location) && [[_cellValues objectAtIndex:[_cells indexOfObject:cell]] isEqualToValue:[NSNumber numberWithInteger:-1]]){
            if(_turn == 0){
                [cell setImage:[UIImage imageNamed:@"xicon.png"]];
                [_cellValues replaceObjectAtIndex:[_cells indexOfObject:cell] withObject:[NSNumber numberWithInteger:0]];
                _turn = 1;
            }
            else{
                [cell setImage:[UIImage imageNamed:@"oicon.png"]];
                [_cellValues replaceObjectAtIndex:[_cells indexOfObject:cell] withObject:[NSNumber numberWithInteger:1]];
                _turn = 0;
            }
        }
    }
    [self checkEnd];
}

-(void) checkEnd{
    
}



@end
