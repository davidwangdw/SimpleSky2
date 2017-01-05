//
//  HourlyViewController.swift
//  SimpleSky
//
//  Created by David Wang on 12/29/16.
//  Copyright © 2016 David Wang. All rights reserved.
//

import UIKit

class DailyViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    
    var weather: WeatherGetter!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        /*
 
 let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
 let blurEffectView = UIVisualEffectView(effect: blurEffect)
 blurEffectView.frame = view.bounds
 blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
 view.addSubview(blurEffectView)
 
 */
        
    }
    
    /*override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = .clearColor()
    }*/


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
