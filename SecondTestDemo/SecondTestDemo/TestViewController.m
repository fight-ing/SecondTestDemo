//
//  TestViewController.m
//  SecondTestDemo
//
//  Created by mac on 14-5-5.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "TestViewController.h"
#import "RootViewController.h"
@interface TestViewController ()

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < 5; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(100, 100+100*i, 100, 100);
        [button setTitle:[NSString stringWithFormat:@"btn %d",i+1] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonClicked:)
         forControlEvents:UIControlEventTouchUpInside];
        button.tag = 100 + i;
        [button setBackgroundColor:[UIColor magentaColor]];
        [self.view addSubview:button];
    }
    
}

-(void) buttonClicked :(UIButton *)btn {
    switch (btn.tag) {
        case 100:
            [self.navigationController popViewControllerAnimated:YES];
            break;
        case 101:
            [self.navigationController popToRootViewControllerAnimated:YES];
            break;
        case 102:
            {
                UINavigationController *nvc = [[self.navigationController viewControllers] objectAtIndex:0];
                [self.navigationController popToViewController:nvc animated:YES];
            }
            break;
        case 103:
            {
                
            }
            break;
        default:
            break;
    }
}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self.navigationController popToRootViewControllerAnimated:YES];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
