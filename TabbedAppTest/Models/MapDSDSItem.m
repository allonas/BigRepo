//
//  MapDSDSItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "MapDSDSItem.h"
#import "NSDictionary+RO.h"

@implementation MapDSDSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.town = [dictionary ro_stringForKey:kMapDSDSItemTown];
    
    self.enlaceGoogleMaps = [dictionary ro_stringForKey:kMapDSDSItemEnlaceGoogleMaps];
    
    id location = [dictionary objectForKey:kMapDSDSItemLocation];
    if ([location isKindOfClass:[NSDictionary class]]) {
    	self.location = [[RORestGeoPoint alloc] initWithDictionary:location];
    }
    
    self.idProp = [dictionary ro_stringForKey:kMapDSDSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

