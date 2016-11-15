//
//  ChartDSDSSchemaItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ChartDSDSSchemaItem.h"
#import "NSDictionary+RO.h"

@implementation ChartDSDSSchemaItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kChartDSDSSchemaItemId];
    
    self.month = [dictionary ro_stringForKey:kChartDSDSSchemaItemMonth];
    
    self.incomes = [dictionary ro_numberForKey:kChartDSDSSchemaItemIncomes];
    
    self.outcomes = [dictionary ro_numberForKey:kChartDSDSSchemaItemOutcomes];
}

- (id)identifier {
	
	return self.idProp;
}

@end

