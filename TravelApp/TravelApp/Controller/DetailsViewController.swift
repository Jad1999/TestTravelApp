//
//  DetailsViewController.swift
//  TravelApp
//
//  Created by Jad ghoson on 30/10/2023.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController{
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBOutlet weak var daysLabel: UILabel!
    
    @IBOutlet weak var desriptionLabel: UILabel!
    
    
    var selectedCell : Info?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Transfer The Data to the Labels
        
        titleLabel.text = selectedCell?.title
        bodyLabel.text = selectedCell?.body
        priceLabel.text = selectedCell?.price
        imageView.image = selectedCell?.image
        daysLabel.text = selectedCell?.days
        desriptionLabel.text = selectedCell?.description
        reviewLabel.text = selectedCell?.review
        
        //Editing the Labels Frames
        reviewLabel.layer.borderWidth = 2.0
        reviewLabel.layer.borderColor = UIColor.black.cgColor
    
        
        
        
        view.addSubview(reviewLabel)
        reviewLabel.layer.cornerRadius = reviewLabel.bounds.width / 5
        reviewLabel.clipsToBounds = true
        
        daysLabel.layer.borderWidth = 2.0
        daysLabel.layer.borderColor = UIColor.black.cgColor
        view.addSubview(daysLabel)
        daysLabel.layer.cornerRadius = daysLabel.bounds.width / 7
        daysLabel.clipsToBounds = true
        
        
        
    }
  
    
    
    
}

