//
//  YinYangViewController.m
//  YinYang
//
//  Created by James F Staud II on 9/5/14.
//  Copyright (c) 2014 Mobi. All rights reserved.
//

#import "YinYangViewController.h"

@interface YinYangViewController ()

@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;

@end

@implementation YinYangViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self customizeButtons:_firstButton];
    [self customizeButtons:_secondButton];
}

- (IBAction)buttonPress:(id)sender {
    if ([(UIButton *)sender isEqual:_firstButton]) {
        //NSLog(@"firstButton pressed");
        [self toggle: sender];
        [self toggle:_secondButton];
    }
    else {
        //NSLog(@"secondButton pressed");
        [self toggle: sender];
        [self toggle:_firstButton];
    }
}

- (void)toggle:(UIButton *)button {
    if ([[button currentTitle] isEqual:@"Yang"]) {
        [self toggleYang:button];
    }
    else{
        [self toggleYin:button];
    }
}

- (void)toggleYang:(id)sender{
    UIButton *btn = (UIButton *)sender;
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn setTitle:@"Yin" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

- (void)toggleYin:(id)sender{
    UIButton *btn = (UIButton *)sender;
    [btn setBackgroundColor:[UIColor whiteColor]];
    [btn setTitle:@"Yang" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)customizeButtons:(UIButton *)button {
    button.layer.borderWidth = 1.0;
    button.layer.cornerRadius = 5.0;
    button.layer.borderColor = [[UIColor blackColor] CGColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
