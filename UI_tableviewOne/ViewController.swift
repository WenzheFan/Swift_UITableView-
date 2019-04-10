//
//  ViewController.swift
//  UI_tableviewOne
//
//  Created by Apple on 2018/11/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbleview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WZTableViewCell") as! WZTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "UIDetailVC")
//        self.navigationController?.pushViewController(vc!, animated: true)
//
//        let vc = storyboard?.instantiateViewController(withIdentifier: "UIDetailVC") as!  UIDetailVC
//        self.navigationController?.pushViewController(vc, animated: true)
        
        let vc = UIStoryboard.init(name: "mydetai", bundle: nil).instantiateViewController(withIdentifier: "UIDetailVC") as!  UIDetailVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
