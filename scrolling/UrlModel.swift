//
//  UrlModel.swift
//  scrolling
//
//  Created by Mohan Madhavan on 8/2/17.
//  Copyright © 2017 Mohan Madhavan. All rights reserved.
//

import Foundation


struct DemoURL
{
    static let Stanford = "http://comm.stanford.edu/wp-content/uploads/2013/01/stanford-campus.png"
    
    static let NASA = [
        "cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    static func NASAImageNamed(imageName: String?) -> NSURL? {
        if let urlstring = NASA[imageName ?? ""] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
}
