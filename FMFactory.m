//
//  FMFactory.m
//  Pirate Game
//
//  Created by Fredrick Myers on 2/13/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import "FMFactory.h"
#import "FMTile.h"

@implementation FMFactory

- (NSArray *)createTileSet
{
    FMTile *tile1 = [[FMTile alloc] init];
    tile1.story = @"Capitan, we are in need of a great adventure like yourself to take back the seven seas.  Go out and find the pirate that is holding the seas hostage.  Here is a the only thing we can offer to help, an old family sword.";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    FMWeapon *familySword = [[FMWeapon alloc] init];
    familySword.name = @"Family Sword";
    familySword.damage = 12;
    tile1.weapon = familySword;
    tile1.actionButtonName = @"Take the Sword!";
    
    
    FMTile *tile2 = [[FMTile alloc] init];
    tile2.story = @"You have come across an abandoned armory.  Would you like to take the amazing steel armor that is covered in dust in the back of the shop?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    FMArmor *steelArmor = [[FMArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.armorValue = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take the armor!";
    
    FMTile *tile3 = [[FMTile alloc] init];
    tile3.story = @"There is a mysterious dock on the horizon, would you like to stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Check out the Dock!";
    
    FMTile *tile4 = [[FMTile alloc] init];
    tile4.story = @"You found a Parrot!  Parrots can be used in your armor slot.  They are very loyal to their Capitan and will fight till the death for them.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    FMArmor *parrot = [[FMArmor alloc] init];
    parrot.name = @"Parrot";
    parrot.armorValue = 20;
    tile4.armor = parrot;
    tile4.actionButtonName = @"Befriend Parrot";
    
    FMTile *tile5 = [[FMTile alloc] init];
    tile5.story = @"You have stumbled across a stash of pirate weapons.  Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    FMWeapon *pistol = [[FMWeapon alloc] init];
    pistol.name = @"Pistol";
    pistol.damage = 17;
    tile5.weapon = pistol;
    tile5.actionButtonName = @"Take the Pistol!";
    
    FMTile *tile6 = [[FMTile alloc] init];
    tile6.story = @"You have been captured by pirates and ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Walk the plank!";
    
    FMTile *tile7 = [[FMTile alloc] init];
    tile7.story = @"You have sited a pirate battle off the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Intervene!";
    
    FMTile *tile8 = [[FMTile alloc] init];
    tile8.story = @"The legend of the deep!  The mighty Kraken appears!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abondon ship!";
    
    FMTile *tile9 = [[FMTile alloc] init];
    tile9.story = @"You stumble across a huge cave of pirate treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take the treasure!";
    
    FMTile *tile10 = [[FMTile alloc] init];
    tile10.story = @"A group of pirates attempt to board your ship!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Fight Pirates!";
    
    FMTile *tile11 = [[FMTile alloc] init];
    tile11.story = @"In the deep blue sea many things live and many things can be found.  Will this treasure bring you fortune or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Dive in!";
    
    FMTile *tile12 = [[FMTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight Boss!";
    
    
    NSMutableArray *column1 = [[NSMutableArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    NSMutableArray *column2 = [[NSMutableArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    NSMutableArray *column3 = [[NSMutableArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    NSMutableArray *column4 = [[NSMutableArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
    
    return tiles;
    
}

- (FMCharacter *)createCharacter
{
    FMCharacter *character = [[FMCharacter alloc] init];
    FMArmor *armor = [[FMArmor alloc] init];
    FMWeapon *weapon = [[FMWeapon alloc] init];
    character.armor = armor;
    character.weapon = weapon;
    character.health = 100;
    character.damage = 0;
    character.weapon.name = @"Fists";
    character.weapon.damage = 10;
    character.armor.name = @"Cloak";
    character.armor.armorValue = 5;
    
    return character;
}

- (FMBoss *)createBoss
{
    FMBoss *boss = [[FMBoss alloc] init];
    boss.health = 65;
    return boss;
}



@end
