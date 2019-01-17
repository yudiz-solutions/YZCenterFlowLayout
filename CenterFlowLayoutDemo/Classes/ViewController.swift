//
//  ViewController.swift
//  CenterFlowLayoutDemo
//
//  Created by Yudiz Solutions on 16/01/19.
//  Copyright © 2019 Yudiz Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    var centerFlowLayout: SJCenterFlowLayout {
        return collectionView.collectionViewLayout as! SJCenterFlowLayout
    }
    var scrollToEdgeEnabled: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configure the required item size (REQURED)
        centerFlowLayout.itemSize = CGSize(
            width: view.bounds.width * 0.7,
            height:  view.bounds.height * 0.3
        )
        
        centerFlowLayout.animationMode = SJCenterFlowLayoutAnimation.scale(sideItemScale: 0.6, sideItemAlpha: 0.6, sideItemShift: 0.0)
     }
}

// MARK: - Actions
extension ViewController {
    @IBAction func swtChangeAction(_ sender: UISwitch){
        switch sender.tag {
        case 1:
            if sender.isOn {
                centerFlowLayout.animationMode =  SJCenterFlowLayoutAnimation.rotation(sideItemAngle: 45, sideItemAlpha: 1, sideItemShift: 0)
            }else{
                centerFlowLayout.animationMode = SJCenterFlowLayoutAnimation.scale(sideItemScale: 0.6, sideItemAlpha: 0.6, sideItemShift: 0.0)
            }
        collectionView.reloadData()
            break
        case 2:
            self.scrollToEdgeEnabled =  sender.isOn
            break
        default:
            centerFlowLayout.scrollDirection = sender.isOn ? .horizontal : .vertical
            break
        }
    }
}


// MARK: - UICollectionView DataSource & Delegate
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryColCell
        cell.imgv.image = UIImage(named: "\(indexPath.row + 1)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.scrollToEdgeEnabled, let cIndexPath = centerFlowLayout.currentCenteredIndexPath,
            cIndexPath != indexPath {
            centerFlowLayout.scrollToPage(atIndex: indexPath.row)
        }
    }
   
 
}
