//
//  SearchDSDSItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "SearchDSDSItem.h"
#import "NSDictionary+RO.h"

@implementation SearchDSDSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.month = [dictionary ro_stringForKey:kSearchDSDSItemMonth];
    
    self.location = [dictionary ro_stringForKey:kSearchDSDSItemLocation];
    
    self.editorial = [dictionary ro_stringForKey:kSearchDSDSItemEditorial];
    
    self.custom = [dictionary ro_stringForKey:kSearchDSDSItemCustom];
    
    self.owner = [dictionary ro_stringForKey:kSearchDSDSItemOwner];
    
    self.episode = [dictionary ro_numberForKey:kSearchDSDSItemEpisode];
    
    self.salesPerson = [dictionary ro_stringForKey:kSearchDSDSItemSalesPerson];
    
    self.valor = [dictionary ro_numberForKey:kSearchDSDSItemValor];
    
    self.idProp = [dictionary ro_stringForKey:kSearchDSDSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

