//
//  HomeScreenViewController.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let homeScreenViewModel:HomeScreenViewModel = HomeScreenViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.homeScreenViewModel.fetchHistory()
//        print(MarvelApi.filterHeroes(completion: <#T##([String?], Error?) -> Void#>))
    }
    
    private func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorStyle = .singleLine
        self.tableView.register(HomeScreenTableViewCell.nib(), forCellReuseIdentifier: HomeScreenTableViewCell.identifier)
        self.homeScreenViewModel.appendData()
    }

}
extension HomeScreenViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         Int(self.homeScreenViewModel.numberOfRows)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeScreenTableViewCell.identifier, for: indexPath) as? HomeScreenTableViewCell
//        cell?.setupCell(history: self.homeScreenViewModel.cellForRow(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.homeScreenViewModel.heightForRow
    }
}

