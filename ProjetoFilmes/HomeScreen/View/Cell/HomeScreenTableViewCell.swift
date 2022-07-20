//
//  HomeScreenTableViewCell.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import UIKit

class HomeScreenTableViewCell: UITableViewCell {

    @IBOutlet weak var elementImageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button1: UIButton!
    static let identifier:String = "HomeScreenTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)

    }
    
    func setupCell(data:HistoryList){
//        self.elementImageView.image = UIImage(named: data.logoPath ?? "image")
//        self.label1.text = data.name
//        self.label2.text = data.originCountry
        self.elementImageView.image = UIImage(named: data.posterPath ?? "")
        self.label1.text = data.title
        self.label2.text = String(data.voteAverage ?? 0.0)
    }
    
}
