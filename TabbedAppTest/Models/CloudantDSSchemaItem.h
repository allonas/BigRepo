//
//  CloudantDSSchemaItem.h
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROCloudantItem.h"
#import "ROModel.h"
#import "CloudantDSSchemaItemKeys.h"

@class CDTDocumentRevision;

@interface CloudantDSSchemaItem : NSObject <ROModelDelegate, ROCloudantItem>

@property (nonatomic, strong) NSString *salesPerson;

@property (nonatomic, strong) NSNumber *salesTotal;

@property (nonatomic, strong) NSString *salesNumber;

@property (nonatomic, strong, readonly) CDTDocumentRevision *rev;

@end
