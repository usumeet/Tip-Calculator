//
//  SettingsViewController.m
//  tipcontroller
//
//  Created by Sumeet Ungratwar on 10/9/14.
//  Copyright (c) 2014 Sumeet Ungratwar. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipController;

- (IBAction)onTap:(id)sender;

- (void)updateDefault;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self updateDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onTap:(id)sender {
    NSLog(@"onTap in SettingsViewController");
    [self updateDefault];
}

- (void)updateDefault {
    
    NSInteger defaultIndex = self.defaultTipController.selectedSegmentIndex;
    
    NSLog(@"updateDefault %ld", defaultIndex);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:defaultIndex forKey:@"default_index"];
    [defaults synchronize];

}


@end
