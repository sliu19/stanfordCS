//
//  Deck.m
//  cs198MP1
//
//  Created by Simin on 1/19/15.
//  Copyright (c) 2015 Simin. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards
{
    if(!_cards){
        NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"10",@"J",@"Q",@"K"];
        NSArray *suit = @[@"♠︎",@"♥︎",@"♣︎",@"♦︎"];
        _cards=[[NSMutableArray alloc] init];

    }
    return _cards;
}

- (card *)drawRandomCard
{
    card *randomCard = nil;
    if ([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
    }
    
    return randomCard;
}

@end

