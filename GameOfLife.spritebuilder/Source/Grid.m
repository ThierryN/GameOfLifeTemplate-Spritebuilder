#import "Grid.h"
#import "Creature.h"

// these are constant or final variables (cannot be changed)
static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
    
}


-(void)onEnter{
    [super onEnter];
    
    [self setupGrid];
    
    //accepts touches on the grid
    self.userInteractionEnabled = YES;
    
}

- (void)setupGrid{
    //divides the grid's size by the number of columns/rows
    //to deterimine the right width and height of each cell
    
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height/GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
    //initialize the array as a blank NSMutableArray here
    _gridArray = [NSMutableArray array];
    
    //initialize the creatures
    for (int i = 0; i < GRID_ROWS; i++){
        //this is how you create two dimensional arrays in objective-c. You place arrays into arrays.
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j = 0; j < GRID_COLUMNS; j++) {
            Creature *creature = [[Creature alloc ] initCreature];
            creature.anchorPoint = ccp(0,0);
            creature.position = ccp(x,y);
            [self addChild:creature];
            
            //this is shorthand to access an array inside an array
            _gridArray[i][j] = creature;
            
            //make creatures visible to test this method, remove this once we know we have filled the grid
            //properly
            creature.isAlive = YES;
            
            x+= _cellWidth;
        }
        
        y+=_cellHeight;
    }
}
@end
