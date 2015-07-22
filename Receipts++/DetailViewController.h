//
//  DetailViewController.h
//  Receipts++
//
//  Created by Cody Zazulak on 2015-07-21.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Receipt.h"
#import "Tag.h"

@interface DetailViewController : UIViewController

@property (nonatomic) Receipt *receipt;
@property (nonatomic) Tag *tag;

@end
