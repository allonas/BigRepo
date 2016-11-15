//
//  LocalDSDSSchemaItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "LocalDSDSSchemaItem.h"
#import "NSDictionary+RO.h"

@implementation LocalDSDSSchemaItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kLocalDSDSSchemaItemId];
    
    self.text = [dictionary ro_stringForKey:kLocalDSDSSchemaItemText];
    
    self.image = [dictionary ro_stringForKey:kLocalDSDSSchemaItemImage];
}

- (id)identifier {
	
	return self.idProp;
}

@end

