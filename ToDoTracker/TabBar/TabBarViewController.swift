//
//  TabBarViewController.swift
//  ToDoTracker
//
//  Created by Денис on 21.06.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .YPWhite
        tabBar.barTintColor = .YPBlue
        
        // Создайте разделительную линию
          let separatorLine = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: 1))
          separatorLine.backgroundColor = UIColor.lightGray
          tabBar.addSubview(separatorLine)
        
        
        let trackerContainer = TrackerPersistentContainer()
        let trackerStore = TrackerStore(context: trackerContainer.context)
        let trackerCategoryStore = TrackerCategoryStore(context: trackerContainer.context, trackerDataStore: trackerStore)
        let trackerRecordStore = TrackerRecordStore(context: trackerContainer.context)
        let categoryViewModel = CategoryViewModel(trackerCategoryStore: trackerCategoryStore)
        
        let trackerDataController = TrackerDataController(trackerCategoryStore: trackerCategoryStore, trackerStore: trackerStore, trackerRecordStore: trackerRecordStore, context: trackerContainer.context)
        
        let trackersViewController = TrackersViewController(trackerDataController: trackerDataController, trackerCategoryStore: trackerCategoryStore, categoryViewModel: categoryViewModel)
        
        let trackersNavigationController = UINavigationController(rootViewController: trackersViewController)
        trackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "Record_circle_fill"),
            selectedImage: nil)
        
        
        let statisticViewController = StatisticViewController()
        statisticViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "Hare_fill"),
            selectedImage: nil)
        
        self.viewControllers = [trackersNavigationController, statisticViewController]
        
    }
}
