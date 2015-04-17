//
//  LoginViewProtocol.h
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginViewProtocol <NSObject>

- (void) loginPressed;
- (void) moveToMainScreen;

@end
