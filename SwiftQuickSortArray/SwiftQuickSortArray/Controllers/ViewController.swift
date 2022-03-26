//
//  ViewController.swift
//  SwiftQuickSortArray
//
//  Created by Angelos Staboulis on 26/3/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SwiftQuickSortArray.shared.array.count
    }
    @IBAction func btnRefresh(_ sender: Any) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if indexPath.row  < SwiftQuickSortArray.shared.array.count {        
            let getValue = String(describing:SwiftQuickSortArray.shared.array.object(at: indexPath.row))
            cell.textLabel?.text = getValue
        }
        return cell
    }
    
    @IBAction func btnFillArray(_ sender: Any) {
        SwiftQuickSortArray.shared.fillArray()
        
    }
    @IBAction func btnSortArray(_ sender: Any) {
        SwiftQuickSortArray.shared.quicksort()
    }
    @IBAction func btnClearList(_ sender: Any) {
        SwiftQuickSortArray.shared.clearList()
    }
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        // Do any additional setup after loading the view.
    }


}

extension ViewController{
    func initialView(){
        SwiftQuickSortArray.shared.initializeArray()
        SwiftQuickSortArray.shared.fillArray()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
}
