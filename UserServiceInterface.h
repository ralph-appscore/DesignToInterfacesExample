//
//  UserServiceInterface.h
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@protocol UserServiceProtocol <NSObject>

- (void) loginWithUsername:(NSString*)username password:(NSString*)password completion:(UserModelReturnedBlock)completionBlock;

@end
