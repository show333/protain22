//
//  Animal.swift
//  protain
//
//  Created by 平田翔大 on 2021/02/01.
//

import Foundation
import Firebase
import FirebaseFirestore

struct Animal {
    public var nameJP : String
    public var nameEN : String
    public var imageName : String
    var documentId : String

    init(dic: [String: Any]) {
        self.nameJP = dic["message"] as? String ?? ""
        self.nameEN = dic["message"] as? String ?? ""
        self.imageName = dic["message"] as? String ?? ""
        self.documentId = dic["documentId"] as? String ?? ""
    }
}
