//
//  ViewController.m
//  DesignToInterfacesExample
//
//  Created by Benny Sheerin on 17/04/2015.
//  Copyright (c) 2015 Benny Sheerin. All rights reserved.
//

#import "ViewController.h"
#import "LoginInteractor.h"

@interface ViewController ()

@property (nonatomic, strong) LoginInteractor *interactor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.interactor = [[LoginInteractor alloc] initWithView:self];
    
    // TESTING
    [self loginPressed];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) loginPressed
{
    // validate input.
    
    // send to interactor for processing.
    [self.interactor loginWithUsername:@"test-username" password:@"test-password" completion:^(BOOL isSuccess) {
        
    }];
}

- (void) moveToMainScreen
{
    // move to the main screen.
    NSLog(@"Moved to Main Screen");
}

@end
