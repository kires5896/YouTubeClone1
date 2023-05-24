//
//  PlaylistItemsModel.swift
//  YouTubeClone1
//
//  Created by Benjamin Arce on 23-05-23.
//

import Foundation

struct PlaylistItemsModel: Decodable{
    let kind: String
    let etag: String
    let items: [PlaylistItems]
    let pageInfo : PageInfo
    
    struct PlaylistItems: Decodable{
        let kind : String
        let etag : String
        let id : String
        let snippet : VideoModel.Item.Snippet
    }
    
    struct PageInfo: Decodable{
        let totalResults: Int
        let resultsPerPage: Int
    }
}
