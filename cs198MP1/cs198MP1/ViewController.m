//
//  ViewController.m
//  cs198MP1
//
//  Created by Simin on 1/19/15.
//  Copyright (c) 2015 Simin. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"

@interface ViewController ()
@property (strong,nonatomic) Deck *myDeck;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)CardFlip:(UIButton *)sender {
    if ([sender.currentTitle length]== 0)
    {
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        Deck *thisDeck = [[Deck alloc] init];
        card *myCard = thisDeck.drawRandomCard;
        NSString *myTitle = [myCard.suits stringByAppendingString:myCard.rank];
        NSLog(@"currentTitle %@",myTitle);
        [sender setTitle:myTitle forState:UIControlStateNormal];
    }
    else {
        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    
}

@end
