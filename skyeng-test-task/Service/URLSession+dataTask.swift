//
//  URLSession+dataTask.swift
//  skyeng-test-task
//
//  Created by Neifmetus on 09.03.2022.
//
import Foundation

extension URLSession {
    func dataTask(
        with url: URL,
        handler: @escaping (Result<Data, Error>) -> Void
    ) -> URLSessionDataTask {
        dataTask(with: url) { data, response, error in
            if let error = error {
                handler(.failure(error))
            } else {
                handler(.success(data ?? Data()))
            }
        }
    }
}
