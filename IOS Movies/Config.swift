//
//  Config.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import Foundation
import Alamofire



public class Config {
    
    
    
    static var COMMAND_URL_IMG:String = "https://image.tmdb.org/t/p/w500"
    static var COMMAND_MOVIES:String = "https://api.themoviedb.org/3/discover/movie?api_key=c9856d0cb57c3f14bf75bdc6c063b8f3"
    
    
    
    
    static var Movies = ResponseWSMovies()
    static var Index_Movies:Int = 0
    
}


