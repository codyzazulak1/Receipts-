//
//  Tag.m
//  
//
//  Created by Cody Zazulak on 2015-07-21.
//
//

#import "Tag.h"
#import "Receipt.h"


@implementation Tag

@dynamic tagName;
@dynamic reciepts;

-(instancetype)initWithTagName:(NSString*)tagName andReciepts:(NSSet*)reciepts {
    self = [super init];
    if (self) {
        self.tagName = tagName;
        self.reciepts = reciepts;
    }
    return self;
}

@end
