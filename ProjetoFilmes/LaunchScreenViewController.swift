//
//  LaunchScreenViewController.swift
//  ProjetoFilmes
//
//  Created by Brendon Sambatti on 13/06/22.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    func setupUI() {
      self.activityIndicator.startAnimating()
    }
}
