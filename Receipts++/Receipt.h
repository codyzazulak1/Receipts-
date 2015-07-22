//
//  Receipt.h
//  
//
//  Created by Cody Zazulak on 2015-07-21.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface Receipt : NSManagedObject

@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * recieptDescription;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSSet *tags;

-(instancetype)initWithAmount:(NSNumber*)amount andRecieptDescription:(NSString*)recieptAmount andTimeStamp:(NSDate*)timeStamp andTags:(NSSet*)tags;

@end

@interface Receipt (CoreDataGeneratedAccessors)

- (void)addTagsObject:(NSManagedObject *)value;
- (void)removeTagsObject:(NSManagedObject *)value;
- (void)addTags:(NSSet *)values;
- (void)removeTags:(NSSet *)values;

@end
