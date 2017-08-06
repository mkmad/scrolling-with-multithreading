//
//  DetailViewController.swift
//  scrolling
//
//  Created by Mohan Madhavan on 8/2/17.
//  Copyright © 2017 Mohan Madhavan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{

    
    let minimumZoomScale: CGFloat = 1.00
    let maximumZoomScale: CGFloat = 25.0
    var model = DetailViewModel.self
    
    
    var imageUrl: URL{
        get{
            return self.imageUrl
            
        }
        set{
            print("Setting Image")
            // Start animating here and stop animating inside the thread
            spinner?.startAnimating()
            image_view?.set_image_from_url(url: newValue, spinner: spinner)

        }
    }

    
    @IBOutlet weak var spinner: UIActivityIndicatorView!{
        didSet{
            print("Setting Spinner")
        }
    }
    
    // Need to be weak since it may not be set when
    // the main view loads. Same goes to optional
    // chaining below
    @IBOutlet weak var scroll_view: ScrollView!{
        didSet{
            log(msg: "Setting Scroll View")
            spinner?.stopAnimating()
            
            // Scroll view requires the calling class
            // or struct to implement certain delegate
            // protocols. self is assigned to let 
            // UIScrollView know that this is the class
            // that implements the function.
            scroll_view.delegate = self
            scroll_view.minimumZoomScale = minimumZoomScale
            scroll_view.maximumZoomScale = maximumZoomScale
            if let fs = image_view.frame_size{
                scroll_view.contentSize = fs
            }
        }
    }
    
    // Need to be weak since it may not be set when
    // the main view loads. Same goes to optional
    // chaining below
    @IBOutlet weak var image_view: ImageView!{
        didSet{
            log(msg: "Setting Image View")
            spinner?.stopAnimating()
            switch model.img{
            case .isdefault:
                let url = URL(string: DemoURL.NASA["cassini"]!)!
                imageUrl = url
                model.img = .notdefault
                break
            case .notdefault:
                print("Setting non default image")
                break
            }
        }
        
    }
}

// This extension is required as it implements the
// the delegates required for scroll view.
extension DetailViewController: UIScrollViewDelegate{
    
    // This is one of the functions declared in the 
    // UIScrollViewDelegate. This specifies which
    // view use for zooming purpose.
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image_view
    }
}
