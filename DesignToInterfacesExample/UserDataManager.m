//
//  UserDataManager.m
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import "UserDataManager.h"
#import "Constants.h"

@interface UserDataManager ()

@property (nonatomic, strong) id<UserServiceProtocol> service;

@end

@implementation UserDataManager

- (instancetype) initWithService:(id<UserServiceProtocol>)service
{
    if (self = [super init])
    {
        self.service = service;
    }
    
    return self;
}

- (void) loginWithUsername:(NSString *)username password:(NSString *)password completion:(LoginCompletionBlock)completionBlock
{
    if (self)
    {
        [self.service loginWithUsername:username password:password completion:^(UserModel *user) {
            
            // save the user locally.
            
            
            // inform of success.
            completionBlock(YES);
        }];
    }
}

@end
