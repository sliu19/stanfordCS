//
//  card.h
//  cs198MP1
//
//  Created by Simin on 1/19/15.
//  Copyright (c) 2015 Simin. All rights reserved.
//

#ifndef cs198MP1_card_h
#define cs198MP1_card_h

#import <Foundation/Foundation.h>

@interface card: NSObject

@property(strong,nonatomic) NSString *suits;
@property(strong,nonatomic) NSString *rank;

-(card *)setCard:(NSString *)suits :(NSString *)ranks;
@end
#endif
