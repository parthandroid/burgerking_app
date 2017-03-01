//
//  ViewController.swift
//  Burger_king
//
//  Created by parth on 3/1/17.
//  Copyright © 2017 parthanand.com. All rights reserved.
//

import UIKit

class ViewController: PagerController, PagerDataSource {
    
    var titles: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        
        let controller1 = OffersViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let controller2 = BurgersViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let controller3 = ShakesViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let controller4 = BiryaniViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let controller5 = SnacksViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        // Setting up the PagerController with Name of the Tabs and their respective ViewControllers
        self.setupPager(
            tabNames: ["OFFERS", "BURGERS", "SHAKES", "BIRYANI", "SNACKS"],
            tabControllers: [controller1, controller2, controller3, controller4, controller5])
        
        customizeTab()
        
    }
    
    // Customising the Tab's View
    func customizeTab() {
        indicatorColor = UIColor.white
        tabsViewBackgroundColor = UIColor(red: 1, green: 102/255, blue: 0, alpha: 1)
        
        contentViewBackgroundColor = UIColor.gray.withAlphaComponent(0.32)
        
        startFromSecondTab = true
        centerCurrentTab = true
        tabLocation = PagerTabLocation.top
        tabHeight = 49
        tabOffset = 36
        tabWidth = 130.0
        fixFormerTabsPositions = false
        fixLaterTabsPosition = false
        animation = PagerAnimation.during
        selectedTabTextColor = .white
        tabsTextFont = UIFont(name: "HelveticaNeue-Bold", size: 20)!
        
        
    }
    
    
}
