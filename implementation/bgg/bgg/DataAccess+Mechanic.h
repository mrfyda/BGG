//
//  DataAccess+BoardGame.h
//  bgg
//
//  Created by João Caxaria on 4/21/11.
//  Copyright 2011 Imaginary Factory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBMechanic.h"

@interface DataAccess (Mechanic)


-(DBMechanic*) getCreateMechanic:(NSString*) cId;
-(DBMechanic*) createMechanic;
-(DBMechanic*) getMechanicById:(NSString*) cId;

@end
