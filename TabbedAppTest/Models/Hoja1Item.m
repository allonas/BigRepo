//
//  Hoja1Item.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "Hoja1Item.h"
#import "NSDictionary+RO.h"

@implementation Hoja1Item

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kHoja1ItemId];
    
    self.column1 = [dictionary ro_stringForKey:kHoja1ItemColumn1];
    
    self.column2 = [dictionary ro_stringForKey:kHoja1ItemColumn2];
    
    self.column3 = [dictionary ro_numberForKey:kHoja1ItemColumn3];
}

- (id)identifier {
	
	return self.idProp;
}

@end

