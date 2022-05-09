//
//  HomeViewController.swift
//  Instagram_Clone
//
//  Created by 정은희 on 2022/04/22.
//

import UIKit

final class HomeViewController: BaseViewController {
    
    // MARK: - Properties
    private lazy var feedList: [FeedDataModel] = FeedDataModel.dummy
    private lazy var storyList: [StoryDataModel] = StoryDataModel.dummy
    
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
        topCollectionView.register(HomeHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HomeHeaderView.identifier)
        topCollectionView.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        feedCollectionView.register(FeedCollectionViewCell.self, forCellWithReuseIdentifier: FeedCollectionViewCell.identifier)
    }
}

// MARK: - Extensions
extension HomeViewController: UICollectionViewDelegate { }

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        switch collectionView {
        case topCollectionView:
            return 1
        default:
            return 0
        }
    }
    
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
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let headerCell = topCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HomeHeaderView.identifier, for: indexPath) as? HomeHeaderView else { return UICollectionReusableView() }
            return headerCell
        default:
            assert(false, "셀 없음")
        }
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 44)
    }
}
