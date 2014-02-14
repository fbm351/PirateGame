//
//  FMViewController.m
//  Pirate Game
//
//  Created by Fredrick Myers on 2/13/14.
//  Copyright (c) 2014 Fredrick Myers. All rights reserved.
//

#import "FMViewController.h"
#import "FMFactory.h"
#import "FMTile.h"

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self gameSetup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Actions

- (IBAction)actionButtonPressed:(UIButton *)sender {
    FMTile *tile = [[self.tiles objectAtIndex:self.location.x] objectAtIndex:self.location.y];
    
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    
    [self updateCharacterStatsForArmor:tile.armor orWeapons:tile.weapon orHealthEffect:tile.healthEffect];
    [self checkForDeath];
    [self updateTile];
    
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.location = CGPointMake(self.location.x, self.location.y + 1);
    [self updateTile];
    [self updateDirectionButtons];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.location = CGPointMake(self.location.x - 1, self.location.y);
    [self updateTile];
    [self updateDirectionButtons];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.location = CGPointMake(self.location.x, self.location.y - 1);
    [self updateTile];
    [self updateDirectionButtons];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.location = CGPointMake(self.location.x + 1, self.location.y);
    [self updateTile];
    [self updateDirectionButtons];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    [self gameSetup];
    
}

#pragma mark - Helper Methods

- (void)updateTile
{
    FMTile *tile = [[self.tiles objectAtIndex:self.location.x] objectAtIndex:self.location.y];
    self.labelStoryText.text = tile.story;
    self.backgroundImage.image = tile.backgroundImage;
    self.labelHealth.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.labelDamage.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.labelWeaponName.text = self.character.weapon.name;
    self.labelArmorName.text = self.character.armor.name;
    [self.actionButton setTitle:tile.actionButtonName forState:UIControlStateNormal];

}

- (void)updateDirectionButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.location.x - 1, self.location.y)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.location.x, self.location.y - 1)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.location.x + 1, self.location.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.location.x, self.location.y + 1)];

}

- (BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.x >= 0 && point.y >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count] ) {
        return NO;
    }
    else {
        return YES;
    }
}

- (void)updateCharacterStatsForArmor:(FMArmor *)armor orWeapons:(FMWeapon *)weapon orHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = (self.character.health - self.character.armor.armorValue) + armor.armorValue;
        self.character.armor = armor;
    }
    else if (weapon != nil) {
        self.character.damage = (self.character.damage - self.character.weapon.damage) + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0) {
        self.character.health = self.character.health + healthEffect;
    }
    else {
        self.character.health = self.character.health + self.character.armor.armorValue;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
    
    
}

- (void)checkForDeath
{
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Your Dead!" message:@"The seas will remain under the Pirate Lord's control, our hero has died." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    }
    else if (self.boss.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Boss is Dead!" message:@"The seas are now safe.  The Pirate Lord's control has been ended." delegate:nil cancelButtonTitle:@"Game Over!" otherButtonTitles:nil];
        [alertView show];
    }
}

- (void)gameSetup
{
    FMFactory *factory = [[FMFactory alloc] init];
    self.tiles = [factory createTileSet];
    self.character = [factory createCharacter];
    self.boss = [factory createBoss];
    
    self.location = CGPointMake(0, 0);
    
    [self updateCharacterStatsForArmor:nil orWeapons:nil orHealthEffect:0];
    [self updateTile];
    [self updateDirectionButtons];
}



@end
