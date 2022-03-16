//
//  News.swift
//  Homework#6
//
//  Created by Can Bi on 16.03.2022.
//

import Foundation

enum NewsCategory: String {
    case fenomenAktuel = "Fenomen Aktüel"
    case arkaPencere = "Arka Pencere"
    case andante = "Andante"
    case patimag = "Patimag"
}

class News {
    var newsId: Int?
    var newsTitle: String?
    var newsImageName: String?
    var newsCategory: NewsCategory?
    var newsDate: String?
    var newsViewCount: Int?
    
    init(){}
    
    init(newsId: Int, newsTitle: String, newsImageName: String, newsCategory: NewsCategory, newsDate: String, newsViewCount: Int) {
        self.newsId = newsId
        self.newsTitle = newsTitle
        self.newsImageName = newsImageName
        self.newsCategory = newsCategory
        self.newsDate = newsDate
        self.newsViewCount = newsViewCount
    }
    
}
