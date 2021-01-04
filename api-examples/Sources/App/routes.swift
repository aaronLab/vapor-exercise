import Vapor

func routes(_ app: Application) throws {
    
    app.get("api", "get", "simple") { req -> String in
        return "\"get\" works properly"
    }
    
    app.get("api", "get", "params", ":param") { req -> String in
        let param = req.parameters.get("param")!
        return "\"get with a parameter\" works properly\nparam: \(param)"
    }
    
    app.get("api", "get", "any", "*", "params") { req -> String in
        return "anyparams"
    }
    
    app.get("api", "get", "catchall", "**") { req -> String in
        return "catchall"
    }
    
}