//
//  HistoryMarker.h
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/28/10. (cjudd@juddsolutions.com)
//  Copyright 2010 Judd Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface HistoryMarker : NSObject <MKAnnotation> {
	NSString* _name;
	NSString* _description;
	
	CLLocationCoordinate2D _coordinate;
}

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* description;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;

+ (HistoryMarker*)historyMarkerWithName:(NSString*) name latitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees) longitude;

@end
