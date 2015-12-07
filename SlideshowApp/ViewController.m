//
//  ViewController.m
//  SlideshowApp
//
//  Created by UedaTakeshi on 2015/12/07.
//  Copyright © 2015年 Ueda Takeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *aImageView;
    NSInteger countNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber = 0;
    [self setupBackground];
    [self setupButton];
}
-(void)setupBackground{
    
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 60, 200, 300)];
    aImageView.backgroundColor = [UIColor blueColor];
    aImageView.contentMode = UIViewContentModeScaleAspectFit;
    aImageView.image = [UIImage imageNamed:@"santa0.png"];
    [self.view addSubview:aImageView];
}

-(void)setupButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0,0, 120, 45);
    button.center = CGPointMake(320,400);
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeImageUsingString:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setImage: [UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(0, 0, 120, 45);
    button2.center = CGPointMake(30,400);
    button2.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(changeImageUsingIf:)
      forControlEvents:UIControlEventTouchUpInside];
    [button2 setImage: [UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
}
-(void)changeImageUsingString:(id)sender{
    countNumber++;
    
    if (countNumber>=3) {
        countNumber = 0;
    }
    
    
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"santa%ld.png",(long)countNumber]];
    
}
-(void)changeImageUsingIf:(id)sender{
    countNumber--;
    
    if (countNumber<=-1) {
        countNumber = 2;
    }
    
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"santa%ld.png",(long)countNumber]];
}














- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
