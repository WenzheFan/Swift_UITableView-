//
//  UIDetailVC.swift
//  UI_tableviewOne
//
//  Created by Apple on 2018/11/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class UIDetailVC: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UINib.init(nibName: "TestCellOne", bundle: nil), forCellReuseIdentifier: "TestCellOne")
        myTableView.register(UINib.init(nibName: "TestCellOne", bundle: nil), forCellReuseIdentifier: "TestCellOne")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIDetailVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCellOne" ) as! TestCellOne
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
}
