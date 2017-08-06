//
//  logging.swift
//  scrolling
//
//  Created by Mohan Madhavan on 8/2/17.
//  Copyright © 2017 Mohan Madhavan. All rights reserved.
//


// TODO(mohan): implement this logging extention to more 
// than one class.
extension DetailViewController
{
    func log(msg: String) {
        print(msg)
    }
    
    override func awakeFromNib() {
        log(msg: "awakeFromNib()")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        log(msg: "viewDidLoad()")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        log(msg: "viewWillAppear(animated = \(animated))")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        log(msg: "viewDidAppear(animated = \(animated))")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        log(msg: "viewWillDisappear(animated = \(animated))")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        log(msg: "viewDidDisappear(animated = \(animated))")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        log(msg: "viewWillLayoutSubviews() bounds.size = \(view.bounds.size)")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        log(msg: "viewDidLayoutSubviews() bounds.size = \(view.bounds.size)")
    }
    
    //    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    //        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    //        log(msg: "viewWillTransitionToSize")
    //        coordinator.animateAlongsideTransition({ (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
    //            self.log("animatingAlongsideTransition")
    //        }, animation: <#((UIViewControllerTransitionCoordinatorContext) -> Void)?#>, completion: { context -> Void in
    //            self.log("doneAnimatingAlongsideTransition")
    //        })
    //    }
}
