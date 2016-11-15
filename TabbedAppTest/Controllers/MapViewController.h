//
//  MapViewController.h
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ROMapViewController.h"
#import "RODataDelegate.h"


@class SearchDSDSItem;
@interface MapViewController : ROMapViewController <RODataDelegate, ROMapViewDelegate, MKMapViewDelegate>


@property (nonatomic, strong) SearchDSDSItem *searchDSDSItem;

@end
