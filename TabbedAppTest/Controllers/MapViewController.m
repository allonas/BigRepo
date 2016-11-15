//
//  MapViewController.m
//  TabbedAppTest
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "MapDetailViewController.h"
#import "MapDSDS.h"
#import "MapDSDSItem.h"
#import "MapViewController.h"
#import "ROAnnotation.h"
#import "ROBehavior.h"
#import "ROError.h"
#import "ROListDataLoader.h"
#import "ROMapSearchBehavior.h"
#import "RONavigationAction.h"
#import "ROOptionsFilter.h"
#import "RORefreshBehavior.h"
#import "RORestGeoPoint.h"
#import "ROStringFilter.h"
#import "ROTextStyle.h"
#import "ROUtils.h"
#import "SearchDSDSItem.h"
#import "UILabel+RO.h"

static NSString *const annotationIdentifier = @"AnnotationIdentifier";

@interface MapViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation MapViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.locationFieldName = kMapDSDSItemLocation;

        self.dataLoader = [[ROListDataLoader alloc] initWithDatasource:[[DatasourceManager sharedInstance] mapDSDS]
                                                         optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Map"];
    
    [self.optionsFilter addDesignFilter:[ROStringFilter filterWithFieldName:kMapDSDSItemTown
                                                                      value:self.searchDSDSItem.location]];
	self.navigationItem.title = NSLocalizedString(@"Map", nil);

    self.mapView.delegate = self;
    self.mapViewDelegate = self;

    [self.behaviors addObject:[ROMapSearchBehavior behaviorViewController:self]];
    [self.behaviors addObject:[RORefreshBehavior behaviorViewController:self]];

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
    }
    return _optionsFilter;
}

#pragma mark - <ROMapViewDelegate>

- (id <MKAnnotation>)annotationWithItem:(MapDSDSItem *)item {

    if (item.location) {

        ROAnnotation *annotation = [ROAnnotation annotationWithItem:item
                                                           geoPoint:item.location];
        annotation.title = item.town;
        annotation.subtitle = item.enlaceGoogleMaps;
        return annotation;
    }
    return nil;
}

- (void)calloutTapped:(MKAnnotationView *)view {

    ROAnnotation *annotation = (ROAnnotation *)view.annotation;
MapDetailViewController *destinationViewController = [MapDetailViewController new];
    destinationViewController.item = annotation.item;
    destinationViewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:destinationViewController
                                         animated:YES];
}

#pragma mark - <RODataDelegate>

- (void)loadData {

    if (self.dataLoader.datasource) {

        __weak typeof(self) weakSelf = self;
        [self.dataLoader.datasource loadWithOptionsFilter:self.optionsFilter onSuccess:^(NSArray *objects) {

            [weakSelf loadDataSuccess:objects];

        } onFailure:^(NSError *error, NSHTTPURLResponse *response) {

            ROError *roError = [ROError errorWithFn:__PRETTY_FUNCTION__ error:error];
            [weakSelf loadDataError:roError];

        }];
    }
}

- (void)loadDataSuccess:(NSArray *)items {

    for (MapDSDSItem *item in items) {
        id <MKAnnotation> annotation = [self annotationWithItem:item];
        if (annotation) {
            [self addAnnotation:annotation];
        }
    }

    for (NSObject<ROBehavior> *behavior in self.behaviors) {

        if ([behavior respondsToSelector:@selector(onDataSuccess:)]) {

            [behavior onDataSuccess:items];
        }
    }
}

- (void)loadDataError:(ROError *)error {

    [error show];
}

#pragma mark - <MKMapViewDelegate>

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {

    if (self.userLocationLoaded) {

        [self setBoundingBoxFilterWithFieldName:self.locationFieldName];

        [self loadData];
    }
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {

    if ([annotation isKindOfClass:[ROAnnotation class]]) {

        MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
        if (!annotationView) {

            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                             reuseIdentifier:annotationIdentifier];

            annotationView.pinColor = MKPinAnnotationColorRed;

            annotationView.enabled = YES;

            annotationView.canShowCallout = YES;
            annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        } else {

            annotationView.annotation = annotation;

        }

        return annotationView;
    }

    return nil;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {

    if ([view.annotation isKindOfClass:[ROAnnotation class]]) {

        [self calloutTapped:view];

    }
}

@end

