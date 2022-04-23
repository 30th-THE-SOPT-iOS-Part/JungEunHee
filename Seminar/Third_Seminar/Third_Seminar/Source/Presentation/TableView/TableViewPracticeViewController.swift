//
//  TableViewPracticeViewController.swift
//  Third_Seminar
//
//  Created by 정은희 on 2022/04/23.
//

import UIKit

final class TableViewPracticeViewController: UIViewController {
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var musicTableView: UITableView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignDelegation()
    }
    
    private func assignDelegation() {
        musicTableView.delegate = self
        musicTableView.dataSource = self
    }
    
    private func registerNib() {
        let nib = UINib.init(nibName: "MusicTableViewCell", bundle: nil)
        musicTableView.register(nib, forCellReuseIdentifier: "MusicTableViewCell")
    }
}

// MARK: - Extensions
extension TableViewPracticeViewController: UITableViewDelegate {
    // UITableViewDelegate → 테이블 뷰의 시각적인 부분을 수정해주는 부분
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension TableViewPracticeViewController: UITableViewDataSource {
    // UITableViewDataSource → 테이블 뷰의 셀을 만들고 데이터를 넣어주는 부분
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MusicDataModel.sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier, for: indexPath) as? MusicTableViewCell else { return UITableViewCell() }
        
        cell.setData(MusicDataModel.sampleData[indexPath.row])
        
        return cell
    }
}
