//
//  Hoja1Schema1Item.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "Hoja1Schema1Item.h"
#import "NSDictionary+RO.h"

@implementation Hoja1Schema1Item

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kHoja1Schema1ItemId];
    
    self.a = [dictionary ro_stringForKey:kHoja1Schema1ItemA];
    
    self.b = [dictionary ro_numberForKey:kHoja1Schema1ItemB];
    
    self.c = [dictionary ro_dateForKey:kHoja1Schema1ItemC];
    
    self.d = [dictionary ro_numberForKey:kHoja1Schema1ItemD];
    
    id e = [dictionary objectForKey:kHoja1Schema1ItemE];
    if ([e isKindOfClass:[NSDictionary class]]) {
    	self.e = [[RORestGeoPoint alloc] initWithDictionary:e];
    }
    
    self.f = [dictionary ro_numberForKey:kHoja1Schema1ItemF];
    
    self.g = [dictionary ro_stringForKey:kHoja1Schema1ItemG];
    
    self.h = [dictionary ro_stringForKey:kHoja1Schema1ItemH];
    
    self.i = [dictionary ro_stringForKey:kHoja1Schema1ItemI];
    
    self.j = [dictionary ro_stringForKey:kHoja1Schema1ItemJ];
}

- (id)identifier {
	
	return self.idProp;
}

@end

