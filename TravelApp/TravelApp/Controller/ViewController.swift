//
//  ViewController.swift
//  TravelApp
//
//  Created by Jad ghoson on 28/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beachButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var forestButton: UIButton!
    
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var info = DataBase.data
    var filterInfo = [Info]()//this value to put the data after filtring the Array
    var isSearching = false
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
        tableView.dataSource = self//this for display the DataSource
        tableView.delegate = self
        tableView.register(UINib(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomiseCell")
        tableView.rowHeight = 200
        tableView.backgroundColor = UIColor.opaqueSeparator//to make the TV same like View wen we scroll down
        
        
        
        //SearchBar
        searchBar.delegate = self
        searchBar.returnKeyType = .done
        searchBar.placeholder = "Search"
        
        //Button editing
        beachButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        beachButton.layer.cornerRadius = beachButton.bounds.width / 5
        beachButton.clipsToBounds = true
        
        forestButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        forestButton.layer.cornerRadius = forestButton.bounds.width / 7
        forestButton.clipsToBounds = true
        
        allButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        allButton.layer.cornerRadius = allButton.bounds.width / 5
        allButton.clipsToBounds = true
    }


}
//MARK: - Data Source For TableView

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearching ? filterInfo.count : info.count //to upload the count of Cells wen its searching and if not searching = false so all cells will be Display it
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomiseCell", for: indexPath) as! CellTableViewCell
        let item = isSearching ? filterInfo[indexPath.row] : info[indexPath.row] //the new value to merge the data of searching with the cell to let the cells changed with all labels in search
       
        
        
        cell.titleLabel?.text = item.title
        cell.bodyLabel?.text = item.body
        cell.priceLabel?.text = item.price
        cell.reviewsLabel?.text = String(item.review)
        cell.containerImageView?.image = item.image
        
        return cell
        
        
    }
    
    
}
//MARK: - UISearch Bar

extension ViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty{
            isSearching = false
            tableView.reloadData()
        }else{
            isSearching = true
            filterInfo = info.filter{ $0.title.lowercased().contains(searchText.lowercased())}
            tableView.reloadData()
        }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    
}
//MARK: Delegate Methods
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MoreDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailsViewController
        if let indexPath = tableView.indexPathForSelectedRow{
            destinationVC.selectedCell = info[indexPath.row]
        }
    }
    
    
    
    
    
}

