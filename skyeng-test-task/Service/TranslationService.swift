//
//  TranslationService.swift
//  skyeng-test-task
//
//  Created by Neifmetus on 09.03.2022.
//
import Foundation

enum TranslateError: Error {
    case urlError
    case networkFailure(Error)
    case invalidData
}

class TranslationService {
    
    let baseUrl = "https://dictionary.skyeng.ru/api/public/v1/"
    let method = "words/search"

    var session = URLSession.shared

    func search(word: String,
                   then handler: @escaping (Result<[Words], TranslateError>) -> Void) {
        guard let url = URL(string: "\(baseUrl)\(method)?search=\(word)") else {
            handler(.failure(.urlError))
            return
        }
        
        let task = session.dataTask(with: url) { result in
            switch result {
            case .success(let data):
                do {
                    let translate = try JSONDecoder().decode([Words].self, from: data)
                    handler(.success(translate))
                } catch {
                    handler(.failure(.invalidData))
                }
            case .failure(let error):
                handler(.failure(.networkFailure(error)))
            }
        }

        task.resume()
    }
    
}

