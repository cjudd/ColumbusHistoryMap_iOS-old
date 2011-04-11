//
//  ColumbusHistoryMapViewController.h
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/26/10. (cjudd@juddsolutions.com)
//  Copyright Judd Solutions 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ColumbusHistoryMapViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet MKMapView* _mapView;
}

@property (nonatomic, retain) MKMapView* mapView;

- (IBAction)zoomCurrentLocation:(id)sender;
- (IBAction)zoomColumbus:(id)sender;

@end

