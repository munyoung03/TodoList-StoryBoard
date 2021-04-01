//
//  ViewController.swift
//  TodoList-StroyBoard
//
//  Created by  LeeMunYoung on 2021/03/30.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = DateViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfTodo
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath) as? DateClass else {
            return UICollectionViewCell()
        }
        
        let todoInfo = viewModel.todoInfo(at: indexPath.item)
        cell.update(info: todoInfo)
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

class DateViewModel {
    let todoList: [Todo] = [
        Todo(day: "Mon", date: "11"),
        Todo(day: "Tue", date: "12"),
        Todo(day: "Wen", date: "13"),
        Todo(day: "Thd", date: "14")
    ]
    
    var numOfTodo: Int{
        return todoList.count
    }
    
    func todoInfo(at index: Int) -> Todo{
        return todoList[index]
    }
}

class DateClass: UICollectionViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    
    func update(info: Todo){
        dateLabel.text = info.date
        dayLabel.text = info.day
        
    }
}




    
