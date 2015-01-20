//
//  card.m
//  cs198MP1
//
//  Created by Simin on 1/19/15.
//  Copyright (c) 2015 Simin. All rights reserved.
//

#import "card.h"
@interface card()
@end

@implementation card

-(card *)setCard:(NSString *)suits :(NSString *)ranks
{
    self.suits = suits;
    self.rank = ranks;
    return self;
}


@end