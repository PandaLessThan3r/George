//
//  MapViewController.m
//  GeorgeMaps
//
//  Created by user on 9/25/13.
//  Copyright (c) 2013 Crabtree. All rights reserved.
//

#import "MapViewController.h"
#define METERS_PER_MILE 1609.344
@interface MapViewController ()

@end
@implementation MapViewController

@synthesize MapView= _mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    CLLocationCoordinate2D zoomLocation; zoomLocation.latitude=-33.86;
    
    zoomLocation.longitude= 151.2;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.7*METERS_PER_MILE, 0.7*METERS_PER_MILE);
    MKPointAnnotation *marker=[[MKPointAnnotation alloc ]init];
    
    marker.coordinate=zoomLocation;
    // 3
     [_mapView setRegion:viewRegion animated:YES];

     [_mapView addAnnotation:(marker)];
     
}   

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
