//
//  ViewController.swift
//  teste
//
//  Created by william jose pires on 04/10/2018.
//  Copyright © 2018 william jose pires. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController:UIViewController{
    
    
    
    override func viewDidLoad() {
       
        
      var a = getUse()
        print(a)
        
        var tt = getContatos()
        print(tt)
    }
    
    
    func getUse(){
    
        Alamofire.request("\(urlBase)/contatos/1", method: .get).responseJSON { (response) in
            
            if let resposta = response.result.value as? Array<Dictionary<String,Any>>{
                let json = JSON(resposta)
                let dat = json["contato"][0]["nome"].stringValue
                print("teste codigo id \(dat)")
                
            }
            
        }
    
    }
        
//        func retornaUsuario(sucesso:@escaping(_ sucesso:Array<String>)->Void,fallha:@escaping(_ erro:String)->Void){
        
    func getContatos() -> Array<String>	{
        
        var lista:Array<String> = Array()

        
        Alamofire.request("\(urlBase)/contatos", method: .get).responseJSON { (resposta) in
            print("tes response\(resposta.debugDescription)")
            print("test tresponse\(resposta.result.value))")
            print("test codigo response\(resposta.response))")

            
            if let dataResposta = resposta.result.value as? Array<Dictionary<String,Any>>{
                let json = JSON(
              
                
            }

//            if let dataResposta = resposta.result.value as? Array<Dictionary<String,Any>>{
//                let json = JSON(dataResposta)
//                    for index  in 0...5{
//                        let contatos = json[index]["contatos"].stringValue
////                    let nome = json["usuario"][index]["bilhetes"][0]["nome"].stringValue
////                    let contatos = json[index]["numero"].stringValue
//                    print("teste nome = e contatos = \(contatos)")
////                    lista.append(nome)
//
//                }
//
//            }


        }
        print("teste lista a\(lista)")

       
        return lista

    
    
    }
            
    

  
        
    
        
        
//
//        let parametros: Dictionary<String,Any> = [
//        "nome":"goku","numero":"1234-4253",
//
//        ]
//
//       let id  = 8

//        Alamofire.request("\(urlBase)/contatos/salvar", method: .post, parameters: parametros, encoding:URLEncoding.default).responseJSON { (resposta) in
//            print("teste resposta \(resposta.result.debugDescription)")
//            print("teste codigo \(resposta.response)")
//
//        }
        
//
//        Alamofire.request("\(urlBase)/contatos/1", method: .get).responseJSON { (response) in
//
//            if let resposta = response.result.value as? Array<Dictionary<String,Any>>{
//            let json = JSON(resposta)
//            let dat = json[0]["nome"].stringValue
//            print("teste codigo id \(dat)")
//
//            }
//
//        }
//        let id = 1
//        Alamofire.request("\(urlBase)/contatos/deletar/\(id)", method: .delete).responseJSON { (resposta) in
//            print("teste resposta \(resposta.result.debugDescription)")
//            print("teste codigo \(resposta.response)")
//        }
        
            
            
//            if let json = resposta.result.value as? [String:Any]{
//                let swifJOSN = JSON(json)
//                let useName = swifJOSN["users"]["firstName"].stringValue
//
//            }
           
        
        
        
//
//            func AlunoJson(json: Any) -> Array<String> {
//
//                let json  = JSON(json)
//                var dataTest : Array<String> = Array()
//                for i in 0...2{
//
//                    let data  = json[i]["nome"].stringValue
//                    dataTest.append(data)
//                }
//
//                return dataTest
//
//            }
//
//

       
            
    
}

    




