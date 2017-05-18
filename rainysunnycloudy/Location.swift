//
//  Location.swift
//  rainysunnycloudy
//
//  Created by Kevin on 2017-05-18.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
