//
//  FMCharacter.h
//  Pirate Game
//
//  Created by Fredrick Myers on 2/14/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMArmor.h"
#import "FMWeapon.h"

@interface FMCharacter : NSObject

@property (nonatomic) int health;
@property (nonatomic) int damage;
@property (nonatomic, strong) FMArmor *armor;
@property (nonatomic, strong) FMWeapon *weapon;


@end
