//
//  ThreadsMessagesResult.swift
//  
//
//  Created by Chris Dillard on 11/07/2023.
//

import Foundation

public struct ThreadsMessagesResult: Codable, Equatable {

    public struct ThreadsMessage: Codable, Equatable {

        public struct ThreadsMessageContent: Codable, Equatable {

            public struct ThreadsMessageContentText: Codable, Equatable {

                public let value: String?

                enum CodingKeys: String, CodingKey {
                    case value
                }
            }

            public struct ImageFileContentText: Codable, Equatable {

                public let fildId: String

                enum CodingKeys: String, CodingKey {
                    case fildId = "file_id"
                }
            }

            public let type: String
            public let text: ThreadsMessageContentText?
            public let imageFile: ThreadsMessageContentText?

            enum CodingKeys: String, CodingKey {
                case type
                case text
                case imageFile = "image_file"
            }
        }

        public let id: String

        public let role: String

        public let content: [ThreadsMessageContent]

        enum CodingKeys: String, CodingKey {
            case id
            case content
            case role
        }
    }


    public let data: [ThreadsMessage]

    enum CodingKeys: String, CodingKey {
        case data
    }

}
