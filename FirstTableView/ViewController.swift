//
//  ViewController.swift
//  FirstTableView
//
//  Created by Sashka IOS Developer on 08.07.2022.
//

import UIKit

class ViewController: UIViewController {

    let idCell = "mailCell"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
             return 2
        }else{
             return 10
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
        if cell == nil{
           cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
            print("Creats")
        }
        if(indexPath.section == 0){
            cell!.textLabel?.text = "Mail Subject"
            cell!.detailTextLabel?.text = "Details text"

        }else{
            cell!.textLabel?.text = "Mail Massage"
            cell!.detailTextLabel?.text = "text"

        }
            return cell!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section"
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
        
    
    

}

