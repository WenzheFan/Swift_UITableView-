//
//  TestCellOne.swift
//  UI_tableviewOne
//
//  Created by Apple on 2018/11/19.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class TestCellOne: UITableViewCell {

    @IBOutlet weak var mytableView: UITableView!
    var selectCellFlag:Bool?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
          mytableView.register(UINib.init(nibName: "TestSubCell", bundle: nil), forCellReuseIdentifier: "TestSubCell")
          mytableView.register(UINib.init(nibName: "TestSubBCell", bundle: nil), forCellReuseIdentifier: "TestSubBCell")
        self.selectCellFlag = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    @IBAction func gotoButtonA(_ sender: UIButton) {
        
        self.selectCellFlag = true
        self.mytableView.reloadData()
    }
    @IBAction func gotoButtonB(_ sender: UIButton) {
        
        self.selectCellFlag = false
        
        self.mytableView.reloadData()
    }
    
}
extension TestCellOne:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.selectCellFlag! {
            return 3
        }else{
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellB = tableView.dequeueReusableCell(withIdentifier: "TestSubBCell") as! TestSubBCell
        let cellA = tableView.dequeueReusableCell(withIdentifier: "TestSubCell") as! TestSubCell
        
        if self.selectCellFlag! {
             return cellA
        }else{
            return cellB
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.selectCellFlag! {
            return 100
        }else{
            return 200
        }
    }
    
}
