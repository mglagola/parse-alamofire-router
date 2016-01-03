/// Generated Alamofire Router

import Alamofire
import Foundation

public typealias JSONDictionary = [String: AnyObject]

public typealias Username = String
public typealias ObjectId = String
public typealias Email = String
public typealias FunctionName = String
public typealias Password = String
public typealias Parameters = [String: AnyObject]
public typealias EventName = String
public typealias TriggerName = String
public typealias ApplicationId = String
public typealias ClassName = String
public typealias Name = String

public enum ParseRouter { 
    case CreateObject(ClassName, Parameters?)
    case GetObject(ClassName, ObjectId)
    case UpdateObject(ClassName, ObjectId, Parameters?)
    case QueryObjects(ClassName, Parameters?)
    case DeleteObject(ClassName, ObjectId)
    case Signup(Username, Password, Parameters?)
    case Login(Username, Password)
    case Logout()
    case GetUser(ObjectId)
    case GetMe()
    case UpdateUser(ObjectId)
    case QueryUsers(Parameters?)
    case DeleteUser(ObjectId)
    case RequestPasswordReset(Email)
    case CreateRole(Parameters?)
    case GetRole(ObjectId)
    case UpdateRole(ObjectId, Parameters?)
    case DeleteRole(ObjectId)
    case LogAppOpened()
    case LogEvent(EventName, Parameters?)
    case Push(Parameters)
    case CreateInstallation(Parameters?)
    case GetInstallation(ObjectId)
    case UpdateInstallation(ObjectId, Parameters?)
    case QueryInstallations(Parameters?)
    case DeleteInstallation(ObjectId)
    case CallCloudFunction(Name, Parameters?)
    case TriggerBackgroundJob(Name, Parameters?)
    case GetSchema(ClassName)
    case CreateSchema(ClassName, Parameters?)
    case UpdateSchema(ClassName, Parameters?)
    case DeleteSchema(ClassName)
    case GetApps()
    case GetApp(ApplicationId)
    case CreateApp(ApplicationId, Parameters?)
    case UpdateApp(ApplicationId, Parameters?)
    case GetFunctions(Parameters?)
    case GetFunction(FunctionName)
    case CreateFunction(FunctionName, Parameters?)
    case UpdateFunction(FunctionName, Parameters?)
    case DeleteFunction(FunctionName)
    case GetTriggers(ClassName, TriggerName)
    case CreateTrigger(ClassName, TriggerName, Parameters?)
    case UpdateTrigger(ClassName, TriggerName, Parameters)
    case DeleteTrigger(ClassName, TriggerName)
    case RawURL(Alamofire.Method, URLStringConvertible)
}

extension ParseRouter: URLRequestConvertible {

    static let BaseURLString: String = "http://api.parse.com/1/"
    
    static var SessionToken: String?
    static var RestAPIKey: String?
    static var AppId: String?

    var method: Alamofire.Method {
        switch self {
        case .GetObject, .QueryObjects, .Login, .GetUser, .GetMe, 
             .QueryUsers, .GetRole, .GetInstallation, .QueryInstallations, .GetSchema, 
             .CreateSchema, .UpdateSchema, .DeleteSchema, .GetApps, .GetApp, 
             .GetFunctions, .GetFunction, .GetTriggers:
            return .GET
        case .CreateObject, .Signup, .Logout, .RequestPasswordReset, .CreateRole, 
             .LogAppOpened, .LogEvent, .Push, .CreateInstallation, .CallCloudFunction, 
             .TriggerBackgroundJob, .CreateApp, .CreateFunction, .CreateTrigger:
            return .POST
        case .UpdateObject, .UpdateUser, .UpdateRole, .UpdateInstallation, .UpdateApp, 
             .UpdateFunction, .UpdateTrigger:
            return .PUT
        case .DeleteObject, .DeleteUser, .DeleteRole, .DeleteInstallation, .DeleteFunction, 
             .DeleteTrigger:
            return .DELETE
        
        case .RawURL(let method, _):
            return method
        }
    }

    var path: String {
        switch self { 
        case .CreateObject(let className, _):
            return "classes/\(className)"
        case .GetObject(let className, let objectId):
            return "classes/\(className)/\(objectId)"
        case .UpdateObject(let className, let objectId, _):
            return "classes/\(className)/\(objectId)"
        case .QueryObjects(let className, _):
            return "classes/\(className)"
        case .DeleteObject(let className, let objectId):
            return "classes/\(className)/\(objectId)"
        case .Signup(_, _, _):
            return "users"
        case .Login(_, _):
            return "login"
        case .Logout():
            return "logout"
        case .GetUser(let objectId):
            return "users/\(objectId)"
        case .GetMe():
            return "users/me"
        case .UpdateUser(let objectId):
            return "users/\(objectId)"
        case .QueryUsers(_):
            return "users"
        case .DeleteUser(let objectId):
            return "users/\(objectId)"
        case .RequestPasswordReset(_):
            return "requestPasswordReset"
        case .CreateRole(_):
            return "roles"
        case .GetRole(let objectId):
            return "roles/\(objectId)"
        case .UpdateRole(let objectId, _):
            return "roles/\(objectId)"
        case .DeleteRole(let objectId):
            return "roles/\(objectId)"
        case .LogAppOpened():
            return "events/AppOpened"
        case .LogEvent(let eventName, _):
            return "events/\(eventName)"
        case .Push(_):
            return "push"
        case .CreateInstallation(_):
            return "installation"
        case .GetInstallation(let objectId):
            return "installation/\(objectId)"
        case .UpdateInstallation(let objectId, _):
            return "installation/\(objectId)"
        case .QueryInstallations(_):
            return "installations"
        case .DeleteInstallation(let objectId):
            return "installations/\(objectId)"
        case .CallCloudFunction(let name, _):
            return "functions/\(name)"
        case .TriggerBackgroundJob(let name, _):
            return "jobs/\(name)"
        case .GetSchema(let className):
            return "schemas/\(className)"
        case .CreateSchema(let className, _):
            return "schemas/\(className)"
        case .UpdateSchema(let className, _):
            return "schemas/\(className)"
        case .DeleteSchema(let className):
            return "schemas/\(className)"
        case .GetApps():
            return "apps"
        case .GetApp(let applicationId):
            return "apps/\(applicationId)"
        case .CreateApp(let applicationId, _):
            return "apps/\(applicationId)"
        case .UpdateApp(let applicationId, _):
            return "apps/\(applicationId)"
        case .GetFunctions(_):
            return "hooks/functions"
        case .GetFunction(let functionName):
            return "hooks/functions/\(functionName)"
        case .CreateFunction(_, _):
            return "hooks/functions"
        case .UpdateFunction(let functionName, _):
            return "hooks/functions/\(functionName)"
        case .DeleteFunction(let functionName):
            return "hooks/functions/\(functionName)"
        case .GetTriggers(let className, let triggerName):
            return "hooks/triggers/\(className)/\(triggerName)"
        case .CreateTrigger(_, _, _):
            return "hooks/triggers"
        case .UpdateTrigger(let className, let triggerName, _):
            return "hooks/triggers/\(className)/\(triggerName)"
        case .DeleteTrigger(let className, let triggerName):
            return "hooks/triggers/\(className)/\(triggerName)"
        case .RawURL(_, let url):
            return url.URLString
        }
    }

    public var URLRequest: NSMutableURLRequest {
        let url = NSURL(string: path)!
        let mutableURLRequest = NSMutableURLRequest(URL: url)
        mutableURLRequest.HTTPMethod = method.rawValue

        guard let apiKey = ParseRouter.RestAPIKey,
            appId = ParseRouter.AppId else {
                fatalError("You must set the parse api key and app id (ParseRouter.RestAPIKey; ParseRouter.ApplicationId)")
        }
        
        mutableURLRequest.setValue(apiKey, forHTTPHeaderField: "X-Parse-REST-API-Key")
        mutableURLRequest.setValue(appId, forHTTPHeaderField: "X-Parse-Application-Id")
        
        if let token = ParseRouter.SessionToken {
            mutableURLRequest.setValue("\(token)", forHTTPHeaderField: "X-Parse-Session-Token")
        }

        switch self {    
        case .CreateObject(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                 
        case .UpdateObject(_, _, let parameters):
            var body: JSONDictionary = JSONDictionary()         
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
               
        case .QueryObjects(_, let parameters):
            var query: JSONDictionary = JSONDictionary()       
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)         
        case .Signup(let username, let password, let parameters):
            var body: JSONDictionary = [
                "username" : username, 
                "password" : password
            ]         
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
               
        case .Login(let username, let password):
            let query: JSONDictionary = [
                "username" : username, 
                "password" : password
            ]     
        	
            return mutableURLRequest.URLEncode(query)                   
        case .QueryUsers(let parameters):
            var query: JSONDictionary = JSONDictionary()     
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)         
        case .RequestPasswordReset(let email):
            let body: JSONDictionary = [
                "email" : email
            ]   
        	
            return mutableURLRequest.JSONEncode(body)
              
        case .CreateRole(let parameters):
            var body: JSONDictionary = JSONDictionary()     
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                 
        case .UpdateRole(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                    
        case .LogEvent(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .Push(let parameters):
            var body: JSONDictionary = JSONDictionary()   
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .CreateInstallation(let parameters):
            var body: JSONDictionary = JSONDictionary()     
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                 
        case .UpdateInstallation(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
               
        case .QueryInstallations(let parameters):
            var query: JSONDictionary = JSONDictionary()     
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)         
        case .CallCloudFunction(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .TriggerBackgroundJob(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                  
        case .CreateSchema(_, let parameters):
            var query: JSONDictionary = JSONDictionary()       
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)       
        case .UpdateSchema(_, let parameters):
            var query: JSONDictionary = JSONDictionary()       
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)               
        case .CreateApp(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .UpdateApp(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
               
        case .GetFunctions(let parameters):
            var query: JSONDictionary = JSONDictionary()     
        	query.merge(parameters) 
            return mutableURLRequest.URLEncode(query)         
        case .CreateFunction(let functionName, let parameters):
            var body: JSONDictionary = [
                "functionName" : functionName
            ]       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .UpdateFunction(_, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
                    
        case .CreateTrigger(let className, let triggerName, let parameters):
            var body: JSONDictionary = [
                "className" : className, 
                "triggerName" : triggerName
            ]         
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        case .UpdateTrigger(_, _, let parameters):
            var body: JSONDictionary = JSONDictionary()       
        	body.merge(parameters) 
            return mutableURLRequest.JSONEncode(body)
              
        default:
            return mutableURLRequest
        }
    }

}

extension NSMutableURLRequest {

    func URLEncode(parameters: JSONDictionary) -> NSMutableURLRequest {
        return Alamofire.ParameterEncoding.URL.encode(self, parameters: parameters).0
    }

    func JSONEncode(parameters: JSONDictionary) -> NSMutableURLRequest {
        return Alamofire.ParameterEncoding.JSON.encode(self, parameters: parameters).0
    }

}

private extension Dictionary {
    /// Safely merge the dictionary with dictionaries passed.
    mutating func merge<K, V>(dictionaries: Dictionary<K, V>?...) {
        for dict in dictionaries {
            if let dict = dict {
                for (key, value) in dict {
                    self.updateValue(value as! Value, forKey: key as! Key)
                }
            }
        }
    }
}