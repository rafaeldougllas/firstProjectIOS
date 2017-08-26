//
//  Comment+CoreDataProperties.m
//  ProjetoTeste
//
//  Created by Treinamento on 26/08/17.
//  Copyright © 2017 Roadmaps. All rights reserved.
//

#import "Comment+CoreDataProperties.h"

@implementation Comment (CoreDataProperties)

+ (NSFetchRequest<Comment *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Comment"];
}

@dynamic user;
@dynamic date;
@dynamic content;
@dynamic picture;

@end
