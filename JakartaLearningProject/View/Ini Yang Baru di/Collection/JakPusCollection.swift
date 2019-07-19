//
//  JakPusCollection.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class JakPusCollection: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
   
    let images: [UIImage] = [
        UIImage(named: "image-1")!,
        UIImage(named: "image-2")!,
        UIImage(named: "image-3")!,
        UIImage(named: "image-4")!,
        UIImage(named: "image-5")!
    ]
    
    let name = [
    "Monas",
    "Gedung Pancasila",
    "Museum Nasional",
    "Gereja Katedral",
    "Masjid Istiqlal"
    ]

    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "jakpusCell", for: indexPath) as! JakPusCell
        
        cell.jakpusImage.image = images[indexPath.row]
          cell.jakpusLabel.text = name[indexPath.row]
        
        return cell
    }
}


    
    
    

