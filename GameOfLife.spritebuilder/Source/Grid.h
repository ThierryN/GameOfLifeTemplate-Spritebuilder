//
//  Grid.h
//  GameOfLife
//
//  Created by WAVEON on 6/29/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int totalAlive;
@property (nonatomic, assign) int generation;


@property (nonatomic, assign) int countNeighbors;
@property (nonatomic, assign) int updateCreatures;

-(void) evolveStep;



@end
