//
//  ListDSDSItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ListDSDSItem.h"
#import "NSDictionary+RO.h"

@implementation ListDSDSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.fECHA = [dictionary ro_dateForKey:kListDSDSItemFECHA];
    
    self.aUTOR = [dictionary ro_stringForKey:kListDSDSItemAUTOR];
    
    self.tITULO = [dictionary ro_stringForKey:kListDSDSItemTITULO];
    
    self.eDITORIAL = [dictionary ro_stringForKey:kListDSDSItemEDITORIAL];
    
    self.eDICION = [dictionary ro_stringForKey:kListDSDSItemEDICION];
    
    self.sOLICITANTE = [dictionary ro_stringForKey:kListDSDSItemSOLICITANTE];
    
    self.cORREO = [dictionary ro_stringForKey:kListDSDSItemCORREO];
    
    self.tELEFONO = [dictionary ro_stringForKey:kListDSDSItemTELEFONO];
    
    self.iNSTITUTO = [dictionary ro_stringForKey:kListDSDSItemINSTITUTO];
    
    self.aSIGNATURA = [dictionary ro_stringForKey:kListDSDSItemASIGNATURA];
    
    self.aLUMNOS = [dictionary ro_numberForKey:kListDSDSItemALUMNOS];
    
    self.idProp = [dictionary ro_stringForKey:kListDSDSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

