//
//  ColumbusHistoryMapViewController.m
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/26/10. (cjudd@juddsolutions.com)
//  Copyright Judd Solutions 2010. All rights reserved.
//

#import "ColumbusHistoryMapViewController.h"
#import "HistoryMarker.h"

@implementation ColumbusHistoryMapViewController

@synthesize mapView = _mapView;


-(void)addMarkers {
	NSMutableArray* markers = [[[NSMutableArray alloc] initWithCapacity:35] autorelease];
	
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Hanna Neil Mission and Home for the Friendless" latitude: 39.958064 longitude: -82.98013]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"In Memory of Ovid Wellford Smith" latitude: 39.940064 longitude: -83.01996]];	
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Deaf School Park" latitude: 39.960307 longitude: -82.98685]];	
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Formerly Maryland Park" latitude: 39.975415 longitude: -82.96537]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Starling Medical College and St. Francis Hospital" latitude: 39.960997 longitude: -82.99045]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Camp Chase" latitude: 39.943513 longitude: -83.0755]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Birthplace of the Veterans of Foreign Wars" latitude: 39.95704 longitude: -82.99159]];		 
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Merion Village" latitude: 39.936373 longitude: -82.98804]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Old Ohio Union" latitude: 39.997002 longitude: -83.01133]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Green Lawn Cemetery" latitude: 39.940064 longitude: -83.0205]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"The National Road" latitude: 39.955563 longitude: -83.0593]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Roy J. Plunkett, June 26, 1910-May 12, 1994" latitude: 40.002236 longitude: -83.01255]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Anne O'Hare McCormick 1880-1954" latitude: 39.989366 longitude: -82.94333]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Monsignor John Joseph Jessing" latitude: 40.1189 longitude: -83.0165]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Trinity Lutheran Seminary" latitude: 39.948114 longitude: -82.99785]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Iskcon Krishna House" latitude: 39.992127 longitude: -83.01713]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Ohio Agricultural Experiment Station" latitude: 40.004784 longitude: -83.02713]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Xerography" latitude: 39.990598 longitude: -83.01998]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"St. Paul African Methodist Episcopal Church" latitude: 39.966964 longitude: -82.9834]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Jesse Owens" latitude: 40.012314 longitude: -83.02796]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Ohio State School for the Blind" latitude: 40.068763 longitude: -83.019]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"The Ohio State Fair" latitude: 40.000943 longitude: -82.98899]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"St. Patrick Church" latitude: 39.969233 longitude: -82.99192]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"George Bellows" latitude: 39.960805 longitude: -83.01365]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Asians in the American Civil War" latitude: 39.967818 longitude: -82.95333]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Wilber H. Siebert Collection" latitude: 40.000833 longitude: -83.01569]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"James Thurber" latitude: 39.966191 longitude: -82.98466]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"The Ohio Statehouse" latitude: 39.962264 longitude: -83.0005]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"General Curtis E. LeMay" latitude: 40.005061 longitude: -83.0171]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Tod Barracks, 1863" latitude: 39.972984 longitude: -83.00252]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Coach Woody Hayes" latitude: 40.011754 longitude: -83.02214]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Reverend Father Alexander Cestelli" latitude:	39.977641 longitude: -82.99898]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"Ohio School for the Deaf" latitude: 40.061963 longitude: -83.00642]];
	[markers addObject:[HistoryMarker historyMarkerWithName:@"St. Clair Hospital" latitude:	39.9717431 longitude: -82.98071583]];
	
	[_mapView addAnnotations:markers];	
}

- (void)viewDidLoad {
    [super viewDidLoad];
	_mapView.delegate = self;

	[self addMarkers];
	
	[self zoomColumbus:nil];
}

- (IBAction)zoomCurrentLocation:(id)sender {
//	NSLog( @"Begin zoom");
//	sleep(10);
//	NSLog(@"End zoom");
	
	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(_mapView.userLocation.location.coordinate, 500, 500);
	[_mapView setRegion:region animated:TRUE];	
}
	
- (IBAction)zoomColumbus:(id)sender {
	
	CLLocationCoordinate2D columbusCenterCoordinate = {39.971793, -82.983396};
	MKCoordinateSpan span = MKCoordinateSpanMake( 0.390456, 0.390456);
	MKCoordinateRegion region = MKCoordinateRegionMake(columbusCenterCoordinate, span);
	[_mapView setRegion:region animated:TRUE];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
	if(annotation == mapView.userLocation) { return nil; }
	
	MKAnnotationView *annotationView = nil;
	annotationView = (MKAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"historyMarker"];
	if(nil == annotationView) {
		annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"historyMarker"];
	}
	
	annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	annotationView.image = [UIImage imageNamed:@"history.png"];
	annotationView.canShowCallout = YES;
	
	return annotationView;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {	
	HistoryMarker* historyMarker = (HistoryMarker*)view.annotation;
	
	NSString* url = [NSString stringWithFormat:@"http://maps.google.com/maps?daddr=%f,%f&saddr=%f,%f", 
					 historyMarker.coordinate.latitude, historyMarker.coordinate.longitude, 
					 _mapView.userLocation.location.coordinate.latitude, _mapView.userLocation.location.coordinate.longitude];
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];		
}

/*
// Used to find the Columbus region.
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
	NSLog(@"Current region = %f, %f and center = %f, %f", _mapView.region.span.latitudeDelta, _mapView.region.span.latitudeDelta, _mapView.region.center.latitude, _mapView.region.center.longitude);
}
 */

- (void)dealloc {
    [super dealloc];
}

@end
