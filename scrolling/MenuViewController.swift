//
//  MenuViewController.swift
//  scrolling
//
//  Created by Mohan Madhavan on 8/2/17.
//  Copyright © 2017 Mohan Madhavan. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destination = segue.destination as? DetailViewController{
            let url = URL(string: DemoURL.NASA[segue.identifier!]!)!
            var _ = destination.view
            destination.imageUrl = url
            destination.model.img = .notdefault
        }
    }

}
