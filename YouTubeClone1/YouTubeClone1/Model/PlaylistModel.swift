//
//  PlaylistModel.swift
//  YouTubeClone1
//
//  Created by Benjamin Arce on 23-05-23.
//

import Foundation

struct PlaylistModel: Decodable {
    let kind : String
    let etag : String
    let pageInfo : PageInfo
    let items : [Item]
    
    struct Item : Decodable{
        let kind: String
        let etag: String
        let id: String
        let snippet : Snippet
        let contentDetails: contentDetails
        
        struct Snippet : Decodable{
            let publishedAt: String
            let channelId: String
            let title: String
            let description: String
            let thumbnails: Thumbnails
            let channelTitle : String
            let localized : Localized
            
            struct Thumbnails: Decodable{
                let medium : Medium
                
                struct Medium: Decodable{
                    let url : String
                    let width : Int
                    let height : Int
                }
            }
            
            struct Localized : Decodable{
                let title: String
                let description: String
            }
        } //Snippet
        
        struct contentDetails : Decodable {
            let itemCount : Int
        }
        
    } //Items
    
    
    struct PageInfo : Decodable{
        let totalResults : Int
        let resultsPerPage : Int
    } // PageInfo
}
