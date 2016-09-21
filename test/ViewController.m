//
//  ViewController.m
//  test
//
//  Created by Veronica Baldys on 2016-03-28.
//  Copyright © 2016 Veronica Baldys. All rights reserved.
//

#import "ViewController.h"
#import <BuddyBuildSDK/BuddyBuildSDK.h>
#import "Glimpse.h"

@interface ViewController ()

@property (nonatomic, strong) Glimpse *glimpse;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	
//	NSLog(@"EMAIL:%@",[BuddyBuildSDK userEmail]);
//    NSLog(@"%@",[BuddyBuildSDK buildNumber]);
}

- (void) viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	// Create a new Glimpse object.
//	self.glimpse = [[Glimpse alloc] init];
//
//	// Start recording and tell Glimpse what to do when you are finished
//	[self.glimpse startRecordingView:self.view onCompletion:^(NSURL *fileOuputURL) {
//		NSLog(@"DONE WITH OUTPUT: %@", fileOuputURL.absoluteString);
//	}];

}

- (IBAction)pressedButton:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Text" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField){
        
    }];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
//	[self.glimpse stop];

}

@end
