//
//  MockUserService.m
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import "MockUserService.h"
#import "UserModel.h"

@implementation MockUserService

/*
 * Returns a dummy user object.
 */
- (void) loginWithUsername:(NSString*)username password:(NSString*)password completion:(UserModelReturnedBlock)completionBlock
{
    completionBlock([[UserModel alloc] init]);
}

@end
