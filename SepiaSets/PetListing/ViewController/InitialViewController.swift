//
//  InitialViewController.swift
//  SepiaSets
//
//  Created by Vartika Singh on 28/11/22.
//

import UIKit


class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpAppEntryPoint()
    }
    
    func setUpAppEntryPoint() {
        if shouldAppBeAccessible(Date.now) {
            let listingVC =  self.storyboard?.instantiateViewController(withIdentifier: "PetsViewController") as! PetsViewController
            let appDelegate = UIApplication.shared.delegate
            appDelegate?.window??.rootViewController = listingVC
        } else {
            let alert = UIAlertController(title: "Sorry!", message: "Our app is not available for access right now. Please try accessing it during the working hours", preferredStyle: .alert)
            self.present(alert, animated: true)
        }
    }
    
    private func shouldAppBeAccessible(_ currentDate: Date) -> Bool {
        let calendarDate = Calendar.current.dateComponents([.weekday], from: currentDate)
        if calendarDate.weekday == 1 || calendarDate.weekday == 7 {
            return false
        }
        
        guard let workingHourStartTime = Calendar.current.date(bySettingHour: 9, minute: 0, second: 0, of: currentDate) else { return false }
        guard let workingHourEndTime = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: currentDate) else { return false }
        if currentDate < workingHourStartTime || currentDate > workingHourEndTime {
            return false
        }
        return true
    }
}
