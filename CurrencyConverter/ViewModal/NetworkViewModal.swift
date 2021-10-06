//
//  NetworkViewModal.swift
//  CurrencyConverter
//
//  Created by Fatih Kilit on 5.10.2021.
//

import Foundation
import SwiftUI

struct NetworkViewModal
{
    
    @Binding var formattedCad: String
    @Binding var formattedJpy: String
    @Binding var formattedGbp: String
    @Binding var formattedUsd: String
    @Binding var formattedTry: String
    
    func getRates () {
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4b82dcde7422c04d3218661b2f409723&format=1")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { data, response, error in
            
            if error != nil {
                
                //Do alert.
                
            } else {
                
                if data != nil
                {
                    do
                    {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String: Any] {
                                
                                if let cad = rates["CAD"] as? Double {
                                
                                    let formatted = String(format: "%.2f", cad)
                                    self.formattedCad = formatted
                                }
                                
                                if let jpy = rates["JPY"] as? Double {
                                
                                    let formatted = String(format: "%.2f", jpy)
                                    self.formattedJpy = formatted
                                }
                                
                                if let gbp = rates["GBP"] as? Double {
                                
                                    let formatted = String(format: "%.2f", gbp)
                                    self.formattedGbp = formatted
                                }
                                
                                if let turkish = rates["TRY"] as? Double {
                                
                                    let formatted = String(format: "%.2f", turkish)
                                    self.formattedTry = formatted
                                }
                                
                                if let usd = rates["USD"] as? Double {
                                
                                    let formatted = String(format: "%.2f", usd)
                                    self.formattedUsd = formatted
                                }
                            }
                        }
                    }
                    catch {
                        print(error.localizedDescription)
                    }
                    
                }
            }
        }
        
        task.resume()
    }
}
