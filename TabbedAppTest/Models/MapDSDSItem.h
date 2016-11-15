//
//  MapDSDSItem.h
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROModel.h"
#import "MapDSDSItemKeys.h"
#import "RORestGeoPoint.h"

@interface MapDSDSItem : NSObject <ROModelDelegate>

@property (nonatomic, strong) NSString *town;

@property (nonatomic, strong) NSString *enlaceGoogleMaps;

@property (nonatomic, strong) RORestGeoPoint *location;

@property (nonatomic, strong) NSString *idProp;

@end
