#import "CCSprite.h"

@interface Creature : CCSprite

// this stores the current state of the creature
@property (nonatomic, assign) BOOL isAlive;

// this stores the amount of living neighbors
@property (nonatomic, assign) NSInteger livingNeighbors;

-(id)initCreature;

@end
