//  RXDispatchGroup.h
//  Created by Rob Rix on 12-02-14.
//  Copyright (c) 2012 Monochrome Industries. All rights reserved.

#import <Foundation/Foundation.h>

@interface RXDispatchGroup : NSObject {
@private
	dispatch_group_t group;
}

-(id)initWithGroup:(dispatch_group_t)_group;
-(id)init; // creates a new group

@property (nonatomic, readonly) dispatch_group_t group;

-(void)enter;
-(void)leave;

@end
