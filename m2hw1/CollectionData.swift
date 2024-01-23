//
//  CollectionData.swift
//  m2hw1
//
//  Created by Salman Abdullayev on 27.12.23.
//

import Foundation

struct Section {
    var type: String
    var header: String
    var items: [Item]
}

struct Item {
    var name: String
    var text: String
    var photo: String
}

class MockData{
    static func getData() -> [Section] {
        let sectionOneItems = [
            Item(name: "Name1", text: "", photo: "img1"),
            Item(name: "Name2", text: "", photo: "img2"),
            Item(name: "Name3", text: "", photo: "img3"),
            Item(name: "Name4", text: "", photo: "img4"),
            Item(name: "Name5", text: "", photo: "img5"),
        ]
        
        let sectionSecondItems = [
            Item(name: "Name1", text: "Some text", photo: "img1"),
            Item(name: "Name2", text: "Some text", photo: "img2"),
            Item(name: "Name3", text: "Some text", photo: "img3"),
            Item(name: "Name4", text: "Some text", photo: "img4"),
            Item(name: "Name5", text: "Some text", photo: "img5"),
        ]
        let sectionThreeItems = [
            Item(name: "Name1", text: "Some text", photo: "img1"),
            Item(name: "Name2", text: "Some text", photo: "img2"),
            Item(name: "Name3", text: "Some text", photo: "img3"),
            Item(name: "Name4", text: "Some text", photo: "img4"),
            Item(name: "Name5", text: "Some text", photo: "img5"),
        ]
        
        let sectionFourItems = [
            Item(name: "Name1", text: "Some text", photo: "img1"),
            Item(name: "Name2", text: "Some text", photo: "img2"),
            Item(name: "Name3", text: "Some text", photo: "img3"),
            Item(name: "Name4", text: "Some text", photo: "img4"),
            Item(name: "Name5", text: "Some text", photo: "img5"),
        ]
        
        let sectionOne = Section(type: "story", header: "", items: sectionOneItems)
        
        let sectionSecond = Section(type: "friends", header: "Friends", items: sectionSecondItems)
        
        let threeSecond = Section(type: "banner", header: "Friends", items: sectionThreeItems)
        let fourSecond = Section(type: "banner", header: "Friends", items: sectionFourItems)
        
        
        return [sectionOne, sectionSecond, threeSecond, fourSecond]
    }
}
