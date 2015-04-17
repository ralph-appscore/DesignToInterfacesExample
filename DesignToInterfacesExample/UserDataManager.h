//
//  UserDataManager.h
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserDataManagerProtocol.h"
#import "UserServiceInterface.h"

@interface UserDataManager : NSObject <UserDataManagerProtocol>

- (instancetype) initWithService:(id<UserServiceProtocol>)service;

@end
