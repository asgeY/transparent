//
//  ViewController.swift
//  TransparentNavigation
//
//  Copyright © 2018. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         UIApplication.shared.statusBarStyle = .lightContent
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = scrollView.contentOffset.y / 267
        
        if (offset >= 0.76) {
            offset = 1
        }
        
        let color =  UIColor(red: 32/255,
                             green: 146 / 255,
                             blue: 195 / 255,
                             alpha: 1.0).withAlphaComponent(offset)
        self.navigationController?.navigationBar.backgroundColor = color
        UIApplication.shared.statusBarView?.backgroundColor = color
    }


}


