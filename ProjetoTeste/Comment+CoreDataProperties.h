//
//  Comment+CoreDataProperties.h
//  ProjetoTeste
//
//  Created by Treinamento on 26/08/17.
//  Copyright © 2017 Roadmaps. All rights reserved.
//

#import "Comment+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Comment (CoreDataProperties)

+ (NSFetchRequest<Comment *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *user;
@property (nullable, nonatomic, copy) NSDate *date;
@property (nullable, nonatomic, copy) NSString *content;
@property (nullable, nonatomic, retain) NSData *picture;

@end

NS_ASSUME_NONNULL_END
