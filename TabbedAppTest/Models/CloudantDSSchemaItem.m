//
//  CloudantDSSchemaItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "CloudantDSSchemaItem.h"
#import "CDTDocumentRevision.h"
#import "NSDictionary+RO.h"

@implementation CloudantDSSchemaItem

@synthesize rev = _rev;

- (instancetype)initWithDocumentRevision:(CDTDocumentRevision *)rev {
    
    self = [super init];
    if (self) {
        
        self.rev = rev;
    }
    return self;
}

+ (instancetype)itemWithDocumentRevision:(CDTDocumentRevision *)rev {

    return [[self alloc] initWithDocumentRevision:rev];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (self) {

        [self updateWithDictionary:dictionary];
    }
    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.salesPerson = [dictionary ro_stringForKey:kCloudantDSSchemaItemSalesPerson];
    
    self.salesTotal = [dictionary ro_numberForKey:kCloudantDSSchemaItemSalesTotal];
    
    self.salesNumber = [dictionary ro_stringForKey:kCloudantDSSchemaItemSalesNumber];
}

- (id)identifier {
    
    return self.rev.docId;
}

- (CDTDocumentRevision *)rev {
    
    if (!_rev) {
        
        _rev = [CDTDocumentRevision revision];
    }
    return _rev;
}

- (void)setRev:(CDTDocumentRevision *)rev {

    _rev = rev;
    [self updateWithDictionary:rev.body];
}

- (void)setSalesPerson:(NSString *)salesPerson {

    _salesPerson = salesPerson;
    self.rev.body[kCloudantDSSchemaItemSalesPerson] = salesPerson;
}

- (void)setSalesTotal:(NSNumber *)salesTotal {

    _salesTotal = salesTotal;
    self.rev.body[kCloudantDSSchemaItemSalesTotal] = salesTotal;
}

- (void)setSalesNumber:(NSString *)salesNumber {

    _salesNumber = salesNumber;
    self.rev.body[kCloudantDSSchemaItemSalesNumber] = salesNumber;
}

@end

