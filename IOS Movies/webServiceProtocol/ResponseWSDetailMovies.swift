//
//  ResponseWSEvent.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import UIKit

/// Web Service Event format response
struct ResponseWSDetailMovies: Codable {
    
    var page : Int!
    var results : [results]!
    var total_pages : Int!
    var total_results : Int!
    
    struct results: Codable{
        
        var adult : Bool!
        var backdrop_path : String?
        var genre_ids: [Int]!
        var id : Int!
        var original_language : String?
        var original_title : String?
        var overview : String?
        var popularity : Double!
        var poster_path : String?
        var release_date : String?
        var title : String?
        var video : Bool!
        var vote_average : Int!
        var vote_count : Int!
        
    }
    
   
}
