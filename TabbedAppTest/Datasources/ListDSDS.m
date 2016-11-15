//
//  ListDSDS.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ListDSDS.h"
#import "ListDSDSItem.h"
#import "NSString+RO.h"
#import "ROUtils.h"

@implementation ListDSDS

static NSString *const kUrl             = @"https://baked-devel-ibm.herokuapp.com";
static NSString *const kApiKey          = @"JZOe7RUM";
static NSString *const kResourceId      = @"/app/5819d095e2fba803003ffbc8/r/listDSDS";

- (instancetype)init {

    self = [super initWithUrlString:kUrl 
                             apiKey:kApiKey 
                         resourceId:kResourceId 
                       objectsClass:[ListDSDSItem class]];
    if (self) {
    
        self.delegate = self;
    }
    return self;
}

- (NSString *)imagePath:(NSString *)path {
  
    if ([path isUrl]) {
        return path;
    }

    return [NSString stringWithFormat:@"https://baked-devel-ibm.herokuapp.com/app/5819d095e2fba803003ffbc8%@?apikey=%@", path, self.apiKey];
}

#pragma mark - <ROSearchable>

- (NSArray *)searchableFields {

    return @[kListDSDSItemAUTOR, kListDSDSItemTITULO, kListDSDSItemEDITORIAL, kListDSDSItemEDICION, kListDSDSItemSOLICITANTE, kListDSDSItemCORREO, kListDSDSItemTELEFONO, kListDSDSItemINSTITUTO, kListDSDSItemASIGNATURA];
}

#pragma mark - <ROCRUDServiceDelegate>

- (void)itemsWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    [self.restClient get:self.resourceId 
                  params:params 
           responseClass:self.objectsClass
            successBlock:successBlock 
            failureBlock:failureBlock];
}

- (void)itemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    [self.restClient get:service 
                  params:nil 
           responseClass:self.objectsClass 
            successBlock:^(id response) {
              
                [[[ROUtils sharedInstance] analytics] logAction:@"read"
                                                         entity:@"ListDSDSItem"
                                                     identifier:identifier];
                if (successBlock) {
                    
                    successBlock(response);
                }
                
            } failureBlock:failureBlock];
}

- (void)createItemWithParams:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    [self.restClient post:self.resourceId 
                   params:params 
            responseClass:self.objectsClass 
             successBlock:^(id response) {
                 
                 [[[ROUtils sharedInstance] analytics] logAction:@"created"
                                                          entity:@"ListDSDSItem"];
                 if (successBlock) {
                     
                     successBlock(response);
                 }
                 
             } failureBlock:failureBlock];
}

- (void)updateItemWithIdentifier:(NSString *)identifier params:(NSDictionary *)params successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    [self.restClient put:service 
                  params:params 
           responseClass:self.objectsClass 
            successBlock:^(id response) {
                
                [[[ROUtils sharedInstance] analytics] logAction:@"updated"
                                                         entity:@"ListDSDSItem"
                                                     identifier:identifier];
                if (successBlock) {
                    
                    successBlock(response);
                }
                
            } failureBlock:failureBlock];
    
}

- (void)deleteItemWithIdentifier:(NSString *)identifier successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/%@", self.resourceId, identifier];
    [self.restClient delete:service 
                     params:nil 
              responseClass:nil 
               successBlock:^(id response) {
                   
                   [[[ROUtils sharedInstance] analytics] logAction:@"deleted"
                                                            entity:@"ListDSDSItem"
                                                        identifier:identifier];
                   if (successBlock) {
                       
                       successBlock(response);
                   }
                   
               } failureBlock:failureBlock];
}

- (void)deleteItemsWithIdentifiers:(NSArray *)identifiers successBlock:(SuccessBlock)successBlock failureBlock:(FailureBlock)failureBlock {

    NSString *service = [NSString stringWithFormat:@"%@/deleteByIds", self.resourceId];
    [self.restClient post:service
                   params:identifiers 
            responseClass:nil
             successBlock:^(id response) {
                 
                 [[[ROUtils sharedInstance] analytics] logAction:@"deleted"
                                                          entity:@"ListDSDSItem"
                                                      identifier:[identifiers componentsJoinedByString:@", "]];
                 if (successBlock) {
                     
                     successBlock(response);
                 }
                 
             } failureBlock:failureBlock];
}

@end

