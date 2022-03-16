//
//  ViewController.swift
//  Homework#6
//
//  Created by Can Bi on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newsCollectionView: UICollectionView!
    var newsList: [News] = [News]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDummyData()
        
        newsCollectionView.delegate = self
        newsCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        let genislik = newsCollectionView.frame.size.width
        let hucreGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*2.1)
        newsCollectionView.collectionViewLayout = tasarim
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func loadDummyData(){
        let n1 = News(newsId: 1, newsTitle: "UNESCO Dünya Mirası şehirlerinden biri: Brugge!", newsImageName: "brugge", newsCategory: .fenomenAktuel, newsDate: "16/03/2022", newsViewCount: 32)
        let n2 = News(newsId: 2, newsTitle: "Gerçek bir yaşamdan uyarlanmış suç dizisi: The Serpent!", newsImageName: "actor", newsCategory: .arkaPencere, newsDate: "16/03/2022", newsViewCount: 78)
        let n3 = News(newsId: 3, newsTitle: "Klasik müziğin genç yeteneği!", newsImageName: "music", newsCategory: .andante, newsDate: "16/03/2022", newsViewCount: 103)
        let n4 = News(newsId: 4, newsTitle: "Şok tasmaları köpeklere ne yapar?", newsImageName: "dog", newsCategory: .patimag, newsDate: "16/03/2022", newsViewCount: 101)
        
        newsList.append(contentsOf: [n1,n2,n3,n4])
    }
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let news = newsList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! NewsCollectionViewCell
        
        cell.newsCatergoryLabel.text = news.newsCategory?.rawValue
        cell.newsDateLabel.text = news.newsDate
        cell.newsImageView.image = UIImage(named: news.newsImageName!)
        cell.newsTitleLabel.text = news.newsTitle
        cell.newsViewCountLabel.text = "\(news.newsViewCount ?? 0)"
        
        cell.layer.shadowColor = UIColor.secondaryLabel.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.1
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        // Configure the cell
        cell.layer.cornerRadius = 10.0
        cell.layer.masksToBounds = true //<-
        
        return cell
    }
}

