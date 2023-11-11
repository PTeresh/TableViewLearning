//
//  TableViewController.swift
//  TableViewApp
//
//  Created by Павел Терешонок on 11.11.2023.
//

import UIKit

final class TableViewController: UITableViewController {
    private let restaurants = ["Papa Djons", "Grilnica dfhjdf dh fhdfhdjfh djfhjd jfdj hfjdhf jdhf jdh fjdhfj dfj hdj fhdj fhdjfhdjfh jdhfjd hhhghg ghghghghg hgh", "Shayrmania", "Burger kit", "chikendener", "sahar", "kurica lavash"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Cell")
		tableView.allowsSelection = false
        title = "Restaurants"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
		cell.label.text = restaurants[indexPath.row]
        return cell
    }
}
