//
//  ImageView.swift
//  scrolling
//
//  Created by Mohan Madhavan on 8/2/17.
//  Copyright © 2017 Mohan Madhavan. All rights reserved.
//

import UIKit

class ImageView: UIImageView {

    var frame_size: CGSize?
    var image_: UIImage?{
        get{
            return image
        }
        set{
            // Size to fit is important!!
            // else image won't display
            image = newValue
            sizeToFit()
            frame_size = frame.size
        }
    }
    
    func set_image_from_url(url: URL, spinner: UIActivityIndicatorView?){
        DispatchQueue.global(qos: .userInitiated).async {[
            weak self] in
            let raw_image = try? Data(contentsOf: url)
            // Basically checking if raw image is not nil
            if let raw_image = raw_image{
                DispatchQueue.main.async {
                    self?.image_ = UIImage(data: raw_image)
                    // Stop animating here
                    spinner?.stopAnimating()
                }
            }
        }

    }
    
    
}
