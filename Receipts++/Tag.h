//
//  Tag.h
//  
//
//  Created by Cody Zazulak on 2015-07-21.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Receipt;

@interface Tag : NSManagedObject

@property (nonatomic, retain) NSString * tagName;
@property (nonatomic, retain) NSSet *reciepts;

-(instancetype)initWithTagName:(NSString*)tagName andReciepts:(NSSet*)reciepts;

@end

@interface Tag (CoreDataGeneratedAccessors)

- (void)addRecieptsObject:(Receipt *)value;
- (void)removeRecieptsObject:(Receipt *)value;
- (void)addReciepts:(NSSet *)values;
- (void)removeReciepts:(NSSet *)values;

@end
