//
//  sinkitoukou.swift
//  protain
//
//  Created by 平田翔大 on 2021/01/29.
//

import UIKit
import Firebase
import FirebaseFirestore

class sinkitoukou: UIViewController {
    @IBOutlet weak var sinkiButton: UIButton!
    @IBOutlet weak var sinkiTextView: UITextView!
    @IBAction func tappedSinkiButton(_ sender: Any) {
        lulu()
        }
    
    private func lulu() {
        
        func randomString(length: Int) -> String {
            let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            return String((0..<length).map{ _ in characters.randomElement()! })
        }
        
        let DragonBall = Firestore.firestore().collection("Rooms").document("karano")
        
        let iwayuruId = randomString(length: 20)
        let thisisMessage = sinkiTextView.text
        let rufi = [
            "message" : thisisMessage as Any,
            "documentId": iwayuruId,
            "zikoku": Timestamp(),
            "users": "a"
            
        ] as [String: Any]
        
        DragonBall.collection("kokoniireru").document(iwayuruId).setData(rufi)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
