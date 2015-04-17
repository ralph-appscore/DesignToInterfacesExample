//
//  LoginInteractor.m
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import "LoginInteractor.h"
#import "UserDataManager.h"
#import "MockUserService.h"

@interface LoginInteractor ()

@property (nonatomic, strong) UserDataManager* dataManager;
@property (nonatomic, weak) id<LoginViewProtocol> view;

@end

@implementation LoginInteractor

- (instancetype) initWithView:(id<LoginViewProtocol>)view
{
    if (self = [super init])
    {
        self.view = view;
        self.dataManager = [[UserDataManager alloc] initWithService:[[MockUserService alloc] init]];
    }
    return self;
}

- (void) loginWithUsername:(NSString *)username password:(NSString *)password completion:(LoginCompletionBlock)completionBlock
{
    if (self.dataManager)
    {
        [self.dataManager loginWithUsername:username password:password completion:^(BOOL isSuccess) {
            
            if (isSuccess)
            {
                [self.view moveToMainScreen];
            }
            
        }];
    }
}

@end
