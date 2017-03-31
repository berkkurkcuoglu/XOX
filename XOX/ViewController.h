//
//  ViewController.h
//  XOX
//
//  Created by berk on 3/30/17.
//  Copyright © 2017 berk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(strong,nonatomic) IBOutletCollection(UIImageView) NSArray *cells;
@property (nonatomic) NSMutableArray *cellValues;
@property (nonatomic) NSInteger turn;

@end

