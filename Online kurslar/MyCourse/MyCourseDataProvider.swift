//
//  MyCourseDataProvider.swift
//  Online kurslar
//
//  Created by MacBook Pro on 20/02/24.
//

import UIKit

class MyCourseDataProvider: NSObject,UITableViewDelegate,UITableViewDataSource {
    
    weak var viewController:UIViewController?
     weak var tableView: UITableView! {
         didSet{
             tableView.dataSource = self
             tableView.delegate = self
         }
     }
    var item = 4
    
     init(viewController: UIViewController? = nil) {
         self.viewController = viewController
     }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCourseTVC", for: indexPath) as? MyCourseTVC else {return UITableViewCell()}
            
            return cell
    }
    
    
    
    
    
    
}
