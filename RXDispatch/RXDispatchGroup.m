//  RXDispatchGroup.m
//  Created by Rob Rix on 12-02-14.
//  Copyright (c) 2012 Monochrome Industries. All rights reserved.

#import "RXDispatchGroup.h"

@implementation RXDispatchGroup

-(id)initWithGroup:(dispatch_group_t)_group {
	if((self = [super init])) {
		dispatch_retain(_group);
		group = _group;
	}
	return self;
}

-(id)init
{
	dispatch_group_t _group = dispatch_group_create();
	self = [self initWithGroup:_group];
	dispatch_release(_group);
	return self;
}

-(void)dealloc {
	dispatch_release(group);
#if !__has_feature(objc_arc)
	[super dealloc];
#endif
}


@synthesize group;


-(void)enter {
	dispatch_group_enter(group);
}

-(void)leave {
	dispatch_group_leave(group);
}

@end
