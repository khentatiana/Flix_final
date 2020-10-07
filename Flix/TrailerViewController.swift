//
//  TrailerViewController.swift
//  Flix
//
//  Created by Tatiana on 10/7/20.
//

import UIKit
import youtube_ios_player_helper

class TrailerViewController: UIViewController {
   
    @IBOutlet weak var playerView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.load(withVideoId: "SUXWAEX2jlg")
        // Do any additional setup after loading the view.
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
