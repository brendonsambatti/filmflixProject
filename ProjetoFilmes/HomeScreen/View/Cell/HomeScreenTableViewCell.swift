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
    
    func setupCell(history:History){
//        self.elementImageView.image = history.
//        self.label1.text = history.title
//        self.label2.text = String(history.popularity)
//        self.button1 = history.voteAverage
    }
    
}
