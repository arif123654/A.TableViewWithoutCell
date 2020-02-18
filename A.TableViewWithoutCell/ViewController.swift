//
//  ViewController.swift
//  A.TableViewWithoutCell
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Utilities
        var txt = ["asdadasdasd","asdasdadad","asdasdasd","asdasdasdasd","asdasdasx","asdasd","asxasd","asdasd"]
    
    @IBOutlet weak var tableViewController: UITableView!
    
    
    
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewController.delegate = self
        tableViewController.dataSource = self
        // Do any additional setup after loading the view.
    }


}

//MARK:- Table View
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return txt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewController.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = txt[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    
    
}
