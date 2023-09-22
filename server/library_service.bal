import ballerina/grpc;
import ballerinax/mysql;
//import ballerinax/mysql.driver as _;

configurable  string USER = "root";
configurable  string PASSWORD = "PHW#84#jeor";
configurable  string HOST = "localhost";
configurable  int PORT = 3306;
configurable  string DATABASE = "library";


final mysql:Client dbClient = check new(
    host=HOST, user=USER, password=PASSWORD, port=PORT, database="library"
);

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: LIBRARY_DESC}

service "Library" on ep {

    remote function addBook(Book value) returns string|error {
        return error("not configured");
    }
    remote function updateBook(Book value) returns string|error {
        return error("not configured");
    }
    remote function removeBook(string value) returns Book|error {
        return error("not configured");
    }
    remote function locateBook(locBook value) returns Book|error {
        return error("not configured");
    }
    remote function borrowBook(Request value) returns string|error {
        return error("not configured");
    }
    remote function createUsers(stream<User, grpc:Error?> clientStream) returns string|error {
        return error("not configured");  
    }
    remote function listAvailableBooks() returns stream<Book, error?>|error {
        return error("not configured");
    }
}

