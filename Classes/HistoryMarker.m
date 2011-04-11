//
//  HistoryMarker.m
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/28/10. (cjudd@juddsolutions.com)
//  Copyright 2010 Judd Solutions. All rights reserved.
//

#import "HistoryMarker.h"

@implementation HistoryMarker

@synthesize coordinate = _coordinate, name = _name, description = _description;

- (NSString *)title {
	return _name;
}

- (NSString *)subtitle {
	return [NSString stringWithFormat:@"%f, %f", _coordinate.latitude, _coordinate.longitude];
}


- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate {
	if((self = [super init])) {
		_coordinate = coordinate;
	}
	return self;
}

+ (HistoryMarker*)historyMarkerWithName:(NSString*) name latitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees) longitude {
	CLLocationCoordinate2D coordinate = {latitude, longitude};
	HistoryMarker* marker = [[[HistoryMarker alloc] initWithCoordinate:coordinate] autorelease];
	
	marker.name = name;
	
	return marker;
}

@end
