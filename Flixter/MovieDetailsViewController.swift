//
//  MovieDetailsViewController.swift
//  Flixter
//
//  Created by Earl Tankard, Jr. on 2/11/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //global variable
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set values of elements
        titleLabel.text       = (movie["title"]    as! String)
        titleLabel.sizeToFit()
        descriptionLabel.text = (movie["overview"] as! String)
        descriptionLabel.sizeToFit()
        
        let baseURL    = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL  = URL(string: baseURL + posterPath)
        posterImageView.af.setImage(withURL: posterURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL  = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropImageView.af.setImage(withURL: backdropURL!)
        
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
