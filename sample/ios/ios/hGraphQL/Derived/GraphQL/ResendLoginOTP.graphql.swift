// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class ResendLoginOtpMutation: GraphQLMutation {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      mutation ResendLoginOTP($id: ID!) {
        login_resendOtp(id: $id)
      }
      """

    public let operationName: String = "ResendLoginOTP"

    public var id: GraphQLID

    public init(id: GraphQLID) {
      self.id = id
    }

    public var variables: GraphQLMap? {
      return ["id": id]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Mutation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("login_resendOtp", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(loginResendOtp: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Mutation", "login_resendOtp": loginResendOtp])
      }

      /// Resends the OTP to the provided credential
      public var loginResendOtp: GraphQLID {
        get {
          return resultMap["login_resendOtp"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "login_resendOtp")
        }
      }
    }
  }
}
