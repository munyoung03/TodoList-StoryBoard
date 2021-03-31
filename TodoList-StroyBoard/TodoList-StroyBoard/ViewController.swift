//
//  ViewController.swift
//  TodoList-StroyBoard
//
//  Created by  LeeMunYoung on 2021/03/30.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath) as? DateClass else {
            return UICollectionViewCell()
        }
        
        cell.dayLabel.text = "Mon"
        cell.dateLabel.text = "11"
        cell.layer.cornerRadius = 15.0
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemSpacing: CGFloat = 10
        let width: CGFloat = (collectionView.bounds.width - itemSpacing) / 5
        let height: CGFloat = width * 1.4
        
        return CGSize(width: width, height: height)
    }
    
    
}

class DateClass: UICollectionViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
}




    
