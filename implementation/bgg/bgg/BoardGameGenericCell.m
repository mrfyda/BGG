//
//  BoardGameGenericCell.m
//  bgg
//
//  Created by Ana Oliveira on 5/12/11.
//  Copyright 2011 Imaginary Factory. All rights reserved.
//

#import "BoardGameGenericCell.h"


@implementation BoardGameGenericCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //Cell background image - Design
        //UIImageView* cellView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"table-cell.png"]] autorelease];
        //[self.contentView addSubview:cellView];
        
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        [self setSelectionStyle:UITableViewCellSelectionStyleGray];
    }
    return self;

}

-(void) setBoardGame:(DBBoardGame*)boardGame
{
    _boardGame = [boardGame retain];
}

-(void) setMenuOption:(NSString*)menuOption
{
    [[self textLabel] setText:menuOption];
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    //MenuOption label
    CGFloat menuOptionPosX = CELL_MARGIN;
    CGFloat menuOptionPosY = 0;
    CGFloat menuOptionWidth = self.textLabel.frame.size.width;
    CGFloat menuOptionHeight = 59;
        
    self.textLabel.frame = CGRectMake(menuOptionPosX, menuOptionPosY, menuOptionWidth, menuOptionHeight);  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [_boardGame release];
    [super dealloc];
}

@end
