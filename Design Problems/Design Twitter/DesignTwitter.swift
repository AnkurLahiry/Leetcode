//
//  DesignTwitter.swift
//  
//
//  Created by Ankur on 7/3/21.
//

// https://leetcode.com/problems/design-twitter/
import Foundation

class Twitter {
    
    var postStack = [(Int, Int)]()
    var post = [Int: [Int]]()
    var followers = [Int: [Int]]()

    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Compose a new tweet. */
    func postTweet(_ userId: Int, _ tweetId: Int) {
        if let value = post[userId] {
             post[userId] = value + [tweetId]
        } else {
            post[userId] = [tweetId]
        }
        postStack.append((userId, tweetId))
    }
    
    /** Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent. */
    func getNewsFeed(_ userId: Int) -> [Int] {
        var count = 0
        var last = postStack.count - 1
        var po = [Int]()
        let f = followers[userId] ?? []
        while last >= 0 {
            let getPost = postStack[last]
            if getPost.0 == userId || f.contains(getPost.0) {
                po.append(getPost.1)
                count += 1
                if count == 10 {
                    break
                }
            }
            last -= 1
        }
        return po
    }
    
    /** Follower follows a followee. If the operation is invalid, it should be a no-op. */
    func follow(_ followerId: Int, _ followeeId: Int) {
        if let value = followers[followerId] {
             followers[followerId] = value + [followeeId]
        } else {
            followers[followerId] = [followeeId]
        }
    }
    
    /** Follower unfollows a followee. If the operation is invalid, it should be a no-op. */
    func unfollow(_ followerId: Int, _ followeeId: Int) {
        if var value = followers[followerId] {
            value.removeAll(where: {$0 == followeeId})
            followers[followerId] = value
        }
    }
}

/**
 * Your Twitter object will be instantiated and called as such:
 * let obj = Twitter()
 * obj.postTweet(userId, tweetId)
 * let ret_2: [Int] = obj.getNewsFeed(userId)
 * obj.follow(followerId, followeeId)
 * obj.unfollow(followerId, followeeId)
 */
