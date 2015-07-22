//
//  Receipt.m
//  
//
//  Created by Cody Zazulak on 2015-07-21.
//
//

#import "Tag.h"
#import "Receipt.h"


@implementation Receipt

@dynamic amount;
@dynamic recieptDescription;
@dynamic timeStamp;
@dynamic tags;

-(instancetype)initWithAmount:(NSNumber*)amount andRecieptDescription:(NSString*)recieptAmount andTimeStamp:(NSDate*)timeStamp andTags:(NSSet*)tags {
    self = [super init];
    if (self) {
        self.amount = amount;
        self.recieptDescription = recieptAmount;
        self.timeStamp = timeStamp;
        self.tags = tags;
    }
    return self;
}

@end
