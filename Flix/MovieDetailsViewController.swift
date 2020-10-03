//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Tatiana on 9/26/20.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    var movie : [String : Any]!//Store selected movie from MoviesViewController
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
       backdrop.af.setImage(withURL: backdropUrl)
        
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
