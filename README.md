# DataFetcher

#This is a small app which is made by using Clean Swift Architecture.
The app first fetches the data from  https://jsonplaceholder.typicode.com/posts to a table view with pagination, by using the Alamofire framework.
When you select any cell, it goes to a DetailViewController, in which it shows title and body from the previous controller and additionally fetches comments
from  https://jsonplaceholder.typicode.com/posts/{post_id}/comments, for a certain ID. All interface is made programmatically without a storyboard.

#Used CocoaPods:
- Alamofire
- SnapKit

#Warning:

Before starting up the project reinstall CocoaPods, just open the terminal and go to the DataFetcher folder and call the 'pod install' command.
