//
//  Meaning.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 14.03.2022.
//

import Foundation
import UIKit

struct Meaning: Decodable {
    let previewUrl: String?
    let translation: Translation
    let transcription: String?
    let imageUrl: String?
    
    struct Translation: Decodable {
        let text: String
        let note: String?
    }
    

    func getImageFrom() -> UIImage? {
        if let previewStringUrl = previewUrl, let url = URL(string: "https:\(previewStringUrl)"), let data = try? Data(contentsOf: url) {
            return UIImage(data: data)
        } else {
            return nil
        }
    }
    
    func getFullImageFrom() -> UIImage? {
        if let fullImageStringUrl = imageUrl, let url = URL(string: "https:\(fullImageStringUrl)"), let data = try? Data(contentsOf: url) {
            return UIImage(data: data)
        }
        else {
            return nil
        }
    }
}

