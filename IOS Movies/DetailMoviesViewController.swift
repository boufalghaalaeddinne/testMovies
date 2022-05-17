//
//  DetailMoviesViewController.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import UIKit

class DetailMoviesViewController: UIViewController {

    @IBOutlet weak var _img: UIImageView!
    
    @IBOutlet weak var _lab_title: UILabel!
    @IBOutlet weak var _lab_s_title: UILabel!
    
    @IBOutlet weak var _lab_date: UILabel!
    
    
    @IBOutlet weak var _lab_description: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("backdrop_path",Config.Movies.results[Config.Index_Movies].backdrop_path)
        print(Config.Movies.results[Config.Index_Movies])
        
        _img.sample(Config.COMMAND_URL_IMG + Config.Movies.results[Config.Index_Movies].backdrop_path!)
        
        _lab_title.text = Config.Movies.results[Config.Index_Movies].original_title!
        
        _lab_s_title.text = Config.Movies.results[Config.Index_Movies].title!
        
        _lab_date.text = Config.Movies.results[Config.Index_Movies].release_date!
        
        _lab_description.text = Config.Movies.results[Config.Index_Movies].overview!
        
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
