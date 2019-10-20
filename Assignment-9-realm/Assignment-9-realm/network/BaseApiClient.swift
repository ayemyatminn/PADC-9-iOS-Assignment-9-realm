//
//  BaseApiClient.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/19/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation
import Alamofire

open class BaseApiClient{
    
    /*
     Function for API Client without Headet
     */
    func requestApiWithoutHeaders(url: String,method: HTTPMethod,parameters: Parameters,success: @escaping(Data) -> Void,failure: @escaping(String) -> Void){
        Alamofire.request(url, method: method, parameters: parameters, headers: [:]).responseJSON { response in
            switch response.result{
            case .success:
                success(response.data!)
            case .failure(let error):
                failure(error.localizedDescription)
            }
        }
    }
    
    /*
     Function for API Client with Header
     */
    func requestApiWithHeaders(url: String,method: HTTPMethod,parameters: Parameters,headers: HTTPHeaders,success: @escaping(Data) -> Void,failure: @escaping(String) -> Void){
        Alamofire.request(url, method: method, parameters: parameters, headers: headers).responseJSON { response in
            switch response.result{
            case .success:
                success(response.data!)
            case .failure(let error):
                failure(error.localizedDescription)
            }
        }
    }
}
