//
//  Constants.h
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

typedef void (^LoginCompletionBlock)(BOOL isSuccess);
typedef void (^UserModelReturnedBlock)(UserModel* user);

@interface Constants : NSObject


@end
