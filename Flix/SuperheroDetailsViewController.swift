//
//  SuperheroDetailsViewController.swift
//  Flix
//
//  Created by Tatiana on 10/2/20.
//

import UIKit
import AlamofireImage

class SuperheroDetailsViewController: UIViewController {
    var movie : [String : Any]!
        
   
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        //add posterView
        let baseUrl = "https://image.tmdb.org/t/p/"
        let posterResolution = "w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterResolution + posterPath)!
        
       posterView.af.setImage(withURL: posterUrl)
        
        //Add backdrop
        let backdropPath = movie["backdrop_path"] as! String
        let backdrtopResolution = "w780"
        let backdropUrl = URL(string: baseUrl + backdrtopResolution + backdropPath)!
        
       backdropView.af.setImage(withURL: backdropUrl)
        
    }
        
        
//        let videoBaseUrl = "https://www.youtube.com/watch?v="
//        let videoPath = movie["key"] as! String
//        let videoUrl = URL(string: videoBaseUrl + videoPath)!
//
//        videoView.af.setImage(withURL: videoUrl)
        
        
    }    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


