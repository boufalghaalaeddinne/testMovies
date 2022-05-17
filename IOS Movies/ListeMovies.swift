//
//  ViewController.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import UIKit

class ListeMovies: UIViewController {

    @IBOutlet weak var _tbl: UITableView!
    
    
    
    var webServiceRequest = WebServiceRequest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Get_movies()
    }
    
    
    func Get_movies(){
        
        self.webServiceRequest.callWebService(loader: true, event: Config.COMMAND_MOVIES, header: [], method: .get, completion: {(response : ResponseWSMovies!, error: Bool) in
        
       
    if error == false {
    

        Config.Movies = response
        self._tbl.reloadData()
            

        
    }
})

}
    
    

}

// MARK: - UITableViewDataSource
//-----------------------------------------------------------------------------------------------------------------------------------------------
extension ListeMovies: UITableViewDataSource {

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      
            if Config.Movies.results != nil{
            return Config.Movies.results.count
            }else{
                return 0
            }

        
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesTableViewCell", for: indexPath) as! MoviesTableViewCell
            
        
       
        cell._img.sample(Config.COMMAND_URL_IMG + Config.Movies.results[indexPath.row].backdrop_path!)
        cell._lab_title.text = Config.Movies.results[indexPath.row].original_title!
        
        cell._lab_s_title.text = Config.Movies.results[indexPath.row].title!
        
        cell._lab_date.text = Config.Movies.results[indexPath.row].release_date!
        

        
        cell.selectionStyle = .none
        
            
            
            return cell
       
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       // print(#function)
        
        Config.Index_Movies = indexPath.row
       
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let VC1 = storyboard.instantiateViewController(withIdentifier: "DetailMoviesViewController") as! DetailMoviesViewController
        self.navigationController?.pushViewController(VC1, animated: true)
                
           
    }
}

// MARK: - UITableViewDelegate
//-----------------------------------------------------------------------------------------------------------------------------------------------
extension ListeMovies: UITableViewDelegate {

    //-------------------------------------------------------------------------------------------------------------------------------------------
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            return 120
        
       
        
        
    }
}

