//
//  Comment+CoreDataClass.m
//  ProjetoTeste
//
//  Created by Treinamento on 26/08/17.
//  Copyright © 2017 Roadmaps. All rights reserved.
//

#import "Comment+CoreDataClass.h"
#import "AppDelegate.h"

@implementation Comment

- (void) fillWithAttributes: (NSDictionary *) attributes {
    id t;
    
    t = [attributes valueForKeyPath:@"user"];
    if (t != nil && ![t isKindOfClass:[NSNull class]])
        self.user = [t description];
    
    t = [attributes valueForKeyPath:@"date"];
    if (t != nil && ![t isKindOfClass:[NSNull class]])
        self.date = [t date];
    
    t = [attributes valueForKeyPath:@"content"];
    if (t != nil && ![t isKindOfClass:[NSNull class]])
        self.content = [t description];
    
    t = [attributes valueForKeyPath:@"picture"];
    if (t != nil && ![t isKindOfClass:[NSNull class]])
        self.picture = [t data];
    
}


+(Comment *)novoComment:(NSDictionary *)elements{
    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    Comment *comment = [NSEntityDescription
                      insertNewObjectForEntityForName:@"Comment"
                      inManagedObjectContext:appDelegate.persistentContainer.viewContext];
    [comment fillWithAttributes:elements];
    
    NSError *saveError = nil;
    [appDelegate.persistentContainer.viewContext save:&saveError];
    return comment;
}

+(NSArray *) todosComments {
    
    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Comment"];
    NSError *error;
    NSArray *produtos = [appDelegate.persistentContainer.viewContext executeFetchRequest:request error:&error];
    return produtos ;
}

+(Comment *) produtoComNome:(NSString *)nome {
    
    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"nome == %@", nome];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Comment"];
    [request setPredicate:predicate];
    NSError *error;
    
    NSArray *produtos = [appDelegate.persistentContainer.viewContext executeFetchRequest:request error:&error];
    return [produtos firstObject];
}

+(NSArray *) produtosComNome:(NSString *)nome {
    
    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"nome CONTAINS[cd] %@", nome];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Produtos"];
    [request setPredicate:predicate];
    NSError *error;
    
    NSArray *produtos = [appDelegate.persistentContainer.viewContext executeFetchRequest:request error:&error];
    return produtos;
}

+(void) deleteProduto:(Comment *) prod {
    AppDelegate *app_d = (AppDelegate *)UIApplication.sharedApplication.delegate;
    [app_d.persistentContainer.viewContext deleteObject:prod];
    NSError *error;
    [app_d.persistentContainer.viewContext save:&error];
    
}


@end
