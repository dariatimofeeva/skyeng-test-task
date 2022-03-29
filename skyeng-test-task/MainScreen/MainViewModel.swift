//
//  MainViewModel.swift
//  skyeng-test-task
//
//  Created by Neifmetus on 09.03.2022.
//

import Foundation

protocol MainViewModelDelegate: AnyObject {
    func reloadData()
}

class MainViewModel {
    var words: [Words] = [] {
        didSet {
            DispatchQueue.main.async {
                self.delegate?.reloadData()
            }
        }
    }
    
    weak var delegate: MainViewModelDelegate?
    let service = TranslationService()
    
    func getWords(by text: String) {
        service.search(word: text) { result in
            switch result {
            case let .success(data):
                self.words = data
            default:
                break
            }
        }
    }
}
