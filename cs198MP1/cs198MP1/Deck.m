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
        _cards=[[NSMutableArray alloc] init];
        NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
        NSArray *validSuits = @[@"♠︎",@"♥︎",@"♣︎",@"♦︎"];
        for (NSString *ranks in rankStrings) {
            for(NSString *suits in validSuits){
                card *newCard = [[card alloc]init];
                newCard.rank = ranks;
                newCard.suits = suits;
                [self.cards addObject:newCard];
            }
        }
        
    }
    return _cards;
}

- (card *)drawRandomCard
{
    printf("inRandom");
    card *randomCard;
    if ([self.cards count]){
        printf("count %lu",(unsigned long)[self.cards count]);
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
    }
    NSLog(@"currentCard %@",randomCard.suits);

    return randomCard;
}

@end

