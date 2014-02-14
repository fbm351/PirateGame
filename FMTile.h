//
//  FMTile.h
//  Pirate Game
//
//  Created by Fredrick Myers on 2/13/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMArmor.h"
#import "FMWeapon.h"

@interface FMTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) FMArmor *armor;
@property (strong, nonatomic) FMWeapon *weapon;
@property (nonatomic) int healthEffect;


@end
