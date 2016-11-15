//
//  GoogleDriveDSSchemaItem.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "GoogleDriveDSSchemaItem.h"
#import "NSDictionary+RO.h"

@implementation GoogleDriveDSSchemaItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.idProp = [dictionary ro_stringForKey:kGoogleDriveDSSchemaItemId];
    
    self.title = [dictionary ro_stringForKey:kGoogleDriveDSSchemaItemTitle];
    
    self.createdBy = [dictionary ro_stringForKey:kGoogleDriveDSSchemaItemCreatedBy];
    
    self.modifiedDate = [dictionary ro_dateForKey:kGoogleDriveDSSchemaItemModifiedDate];
    
    self.downloadUrl = [dictionary ro_stringForKey:kGoogleDriveDSSchemaItemDownloadUrl];
}

- (id)identifier {
	
	return self.idProp;
}

@end

