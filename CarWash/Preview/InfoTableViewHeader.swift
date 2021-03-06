//
//  InfoTableViewHeader.swift
//  CarWash
//
//  Created by alena on 24.01.2020.
//  Copyright © 2020 alena. All rights reserved.
//

import UIKit
class InfoTableViewHeader: UIView {

    let imageView = UIImageView(image: UIImage(named: "CarWash"))
    let nameCarWashLabel = UILabel()
    let generalReitingLabel = UILabel()
    let generalRaitingNumberLabel = UILabel()
    let freeOrBusyLabel = UILabel()
    var generatRaiting = Double.random(in: 2.5...5.0)
    
    required init(frame: CGRect, title: String) {
        super.init(frame: frame)
        setupImage(image: imageView)
        setupNameCarWashLabel(text: title)
        seupGeneralReiting(generalRaiting: "Общий рейтинг")
        setupGeneralRaitingNumber(number: "\(generatRaiting.binade)")
        setupFreeOrBusy()
        
        
    }
    func setupNameCarWashLabel(text: String) {
        
        nameCarWashLabel.font = UIFont.boldSystemFont(ofSize: 40)
        nameCarWashLabel.frame = CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width - 40, height: self.frame.height)
        nameCarWashLabel.text = text
        nameCarWashLabel.textAlignment = .center
        nameCarWashLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        self.addSubview(nameCarWashLabel)

    }
    
    func setupImage(image: UIImageView) {
        imageView.frame = CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 150)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        
        self.addSubview(imageView)
    }
    func seupGeneralReiting(generalRaiting: String) {
        generalReitingLabel.font = UIFont.boldSystemFont(ofSize: 20)
        generalReitingLabel.frame = CGRect(x: 20, y: 110, width: UIScreen.main.bounds.width - 40, height: self.frame.height)
        generalReitingLabel.text = generalRaiting
        
        
        self.addSubview(generalReitingLabel)
    }
    func setupGeneralRaitingNumber(number: String) {
        
        generalRaitingNumberLabel.frame = CGRect(x: 340, y: 110, width: UIScreen.main.bounds.width - 40, height: self.frame.height)
        generalRaitingNumberLabel.text = number
        
        
        
        self.addSubview(generalRaitingNumberLabel)
        
    }
    func setupFreeOrBusy() {
        freeOrBusyLabel.font = UIFont.boldSystemFont(ofSize: 35)
        freeOrBusyLabel.frame = CGRect(x: 30, y: 160, width: UIScreen.main.bounds.width - 40, height: self.frame.height)
        freeOrBusyLabel.textAlignment = .center
        
        var countBoxesRandom = Int.random(in: 0...2)
        if countBoxesRandom == 0 {
            freeOrBusyLabel.text = "СВОБОДНО"
            freeOrBusyLabel.textColor = .green
        } else {
            freeOrBusyLabel.text = "ЗАНЯТО"
            freeOrBusyLabel.textColor = .red
        }
        
        self.addSubview(freeOrBusyLabel)
    }
    
        
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
}
    
