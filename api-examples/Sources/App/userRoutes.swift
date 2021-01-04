//
//  userRoutes.swift
//  
//
//  Created by Aaron Lee on 2021-01-04.
//

import Vapor

func userRoutes(_ app: Application) throws {
    
    let users = app.grouped("api", "get", "users")
    
    users.get("get1") { req -> String in
        return "User Get Groupped 1"
    }
    
    app.group("api", "get", "users", "get2") { users2 in
        
        users2.get { req -> String in
            return "User Get Groupped 2"
        }
        
        users2.get(":id") { req -> String in
            let id = req.parameters.get("id")!
            return "User Get Groupped 2 with param: \(id)"
        }
        
        users2.post { req -> String in
            guard let bodyString = req.body.string else {
                throw Abort(HTTPResponseStatus.badRequest)
            }
            print(bodyString)
            return "Success"
        }
    }
    
}
