//
//  ImageViewController.swift
//  skyeng-test-task
//
//  Created by Дарья Тимофеева on 22.03.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    private lazy var imageView = UIImageView()
    private lazy var closeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSubviews()
        self.view.backgroundColor = UIColor.white
        
        closeButton.addTarget(self, action: #selector(closeImageVC), for: .touchUpInside)
        
    }
   
    private func layoutSubviews() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 48),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 3/4)
        ])
        
        closeButton = UIButton(type: .system)
        closeButton.setTitle("Close", for: .normal)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 10),
            closeButton.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: -10)
        ])
        
    }
    
    func insertAnImage(image: UIImage?) {
        imageView.image = image
    }
    
    @objc func closeImageVC() {
        dismiss(animated: true, completion: nil)
    }
    
}
