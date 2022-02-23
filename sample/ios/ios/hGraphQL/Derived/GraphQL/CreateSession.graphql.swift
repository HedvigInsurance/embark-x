// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class CreateSessionMutation: GraphQLMutation {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      mutation CreateSession($campaign: CampaignInput, $trackingId: UUID) {
        createSession(campaign: $campaign, trackingId: $trackingId)
      }
      """

    public let operationName: String = "CreateSession"

    public var campaign: CampaignInput?
    public var trackingId: String?

    public init(campaign: CampaignInput? = nil, trackingId: String? = nil) {
      self.campaign = campaign
      self.trackingId = trackingId
    }

    public var variables: GraphQLMap? {
      return ["campaign": campaign, "trackingId": trackingId]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Mutation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("createSession", arguments: ["campaign": GraphQLVariable("campaign"), "trackingId": GraphQLVariable("trackingId")], type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(createSession: String) {
        self.init(unsafeResultMap: ["__typename": "Mutation", "createSession": createSession])
      }

      public var createSession: String {
        get {
          return resultMap["createSession"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createSession")
        }
      }
    }
  }
}
