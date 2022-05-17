//
//  WebServiceRequest.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import Alamofire
import UIKit


class WebServiceRequest: NSObject {
    
   
    
    func callWebService<T:Codable>(loader : Bool , event : String , header : HTTPHeaders, method: HTTPMethod, completion:@escaping (T? , Bool) ->()){

        print(event)
        print("*******-------********")
        
        if Utility.isConnectedToNetwork() {
           
           
            
                AF.request(event ,
                              method: method,
                              encoding: JSONEncoding.default,
                              headers: header)
                 { $0.timeoutInterval = 10 }
                .validate(statusCode: 200...401)
                 .responseJSON { (response) in
                     
                  
            do {
               
            let result = response.result
                
                
               
            switch result {
            case .success:
                
                print("success service response : " + String(decoding: response.data!, as: UTF8.self))
                print("*******-------********")
                
                
                    let responseWs  = try JSONDecoder().decode(T.self, from: response.data!)
                    completion(responseWs, false)
                                   
            case .failure:
                print("failure")
                completion(nil, true)
                

            }
                        
                        }
                        catch {
                            completion(nil, true)
                            print("catch", error)
                        }
                        
                   
            }
        } else {
            completion(nil, true)
           
        }
    }
    
   
     
        
   
    

}
