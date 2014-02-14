//
//  FMFactory.h
//  Pirate Game
//
//  Created by Fredrick Myers on 2/13/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMCharacter.h"
#import "FMBoss.h"


@interface FMFactory : NSObject

- (NSArray *)createTileSet;
- (FMCharacter *)createCharacter;
- (FMBoss *)createBoss;

@end
