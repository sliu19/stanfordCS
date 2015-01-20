//
//  Deck.h
//  cs198MP1
//
//  Created by Simin on 1/19/15.
//  Copyright (c) 2015 Simin. All rights reserved.
//

#ifndef cs198MP1_Deck_h
#define cs198MP1_Deck_h

#import <Foundation/Foundation.h>
#import "card.h"

@interface Deck : NSObject

-(card*)drawRandomCard;

@end
#endif
