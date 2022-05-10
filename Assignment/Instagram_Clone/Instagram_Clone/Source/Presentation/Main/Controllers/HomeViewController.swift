//
//  HomeViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/22.
//

import UIKit

final class HomeViewController: BaseViewController {
    
    // MARK: - Properties
    private var feedList: [FeedDataModel] = FeedDataModel.dummy
    private var storyList: [StoryDataModel] = StoryDataModel.dummy
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var feedCollectionView: UICollectionView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignDelegation()
        registerNib()
    }
    
    // MARK: - Functions
    private func assignDelegation() {
        [topCollectionView, feedCollectionView].forEach {
            $0?.delegate = self
            $0?.dataSource = self
        }
    }
    
    private func registerNib() {
        topCollectionView.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        feedCollectionView.register(FeedCollectionViewCell.self, forCellWithReuseIdentifier: FeedCollectionViewCell.identifier)
    }
}

// MARK: - Extensions
extension HomeViewController: UICollectionViewDelegate { }

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case topCollectionView:
            return storyList.count
        case feedCollectionView:
            return feedList.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case topCollectionView:
            guard let topCell = topCollectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else { return UICollectionViewCell() }
            return topCell
        case feedCollectionView:
            guard let feedCell = feedCollectionView.dequeueReusableCell(withReuseIdentifier: FeedCollectionViewCell.identifier, for: indexPath) as? FeedCollectionViewCell else { return UICollectionViewCell() }
            return feedCell
        default:
            return UICollectionViewCell()
        }
    }
}
