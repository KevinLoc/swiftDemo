// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// An enumeration.
public enum BankAccountNature: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// ACCOUNT
  case account
  /// BONUS
  case bonus
  /// CARD
  case card
  /// CHECKING
  case checking
  /// CREDIT
  case credit
  /// CREDIT_CARD
  case creditCard
  /// DEBIT_CARD
  case debitCard
  /// EWALLET
  case ewallet
  /// INSURANCE
  case insurance
  /// INVESTMENT
  case investment
  /// LOAN
  case loan
  /// MORTGAGE
  case mortgage
  /// SAVINGS
  case savings
  /// CASH_ON_HAND
  case cashOnHand
  /// CPF
  case cpf
  /// BANK_ACCOUNT
  case bankAccount
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACCOUNT": self = .account
      case "BONUS": self = .bonus
      case "CARD": self = .card
      case "CHECKING": self = .checking
      case "CREDIT": self = .credit
      case "CREDIT_CARD": self = .creditCard
      case "DEBIT_CARD": self = .debitCard
      case "EWALLET": self = .ewallet
      case "INSURANCE": self = .insurance
      case "INVESTMENT": self = .investment
      case "LOAN": self = .loan
      case "MORTGAGE": self = .mortgage
      case "SAVINGS": self = .savings
      case "CASH_ON_HAND": self = .cashOnHand
      case "CPF": self = .cpf
      case "BANK_ACCOUNT": self = .bankAccount
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .account: return "ACCOUNT"
      case .bonus: return "BONUS"
      case .card: return "CARD"
      case .checking: return "CHECKING"
      case .credit: return "CREDIT"
      case .creditCard: return "CREDIT_CARD"
      case .debitCard: return "DEBIT_CARD"
      case .ewallet: return "EWALLET"
      case .insurance: return "INSURANCE"
      case .investment: return "INVESTMENT"
      case .loan: return "LOAN"
      case .mortgage: return "MORTGAGE"
      case .savings: return "SAVINGS"
      case .cashOnHand: return "CASH_ON_HAND"
      case .cpf: return "CPF"
      case .bankAccount: return "BANK_ACCOUNT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: BankAccountNature, rhs: BankAccountNature) -> Bool {
    switch (lhs, rhs) {
      case (.account, .account): return true
      case (.bonus, .bonus): return true
      case (.card, .card): return true
      case (.checking, .checking): return true
      case (.credit, .credit): return true
      case (.creditCard, .creditCard): return true
      case (.debitCard, .debitCard): return true
      case (.ewallet, .ewallet): return true
      case (.insurance, .insurance): return true
      case (.investment, .investment): return true
      case (.loan, .loan): return true
      case (.mortgage, .mortgage): return true
      case (.savings, .savings): return true
      case (.cashOnHand, .cashOnHand): return true
      case (.cpf, .cpf): return true
      case (.bankAccount, .bankAccount): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [BankAccountNature] {
    return [
      .account,
      .bonus,
      .card,
      .checking,
      .credit,
      .creditCard,
      .debitCard,
      .ewallet,
      .insurance,
      .investment,
      .loan,
      .mortgage,
      .savings,
      .cashOnHand,
      .cpf,
      .bankAccount,
    ]
  }
}

public final class BankAccountsUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query bankAccountsUser {
      bankAccounts {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            name
            nature
          }
        }
      }
    }
    """

  public let operationName: String = "bankAccountsUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("bankAccounts", type: .object(BankAccount.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(bankAccounts: BankAccount? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "bankAccounts": bankAccounts.flatMap { (value: BankAccount) -> ResultMap in value.resultMap }])
    }

    /// all bank accounts under all logins for user
    public var bankAccounts: BankAccount? {
      get {
        return (resultMap["bankAccounts"] as? ResultMap).flatMap { BankAccount(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "bankAccounts")
      }
    }

    public struct BankAccount: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["BankAccountNodeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .nonNull(.list(.object(Edge.selections)))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge?]) {
        self.init(unsafeResultMap: ["__typename": "BankAccountNodeConnection", "edges": edges.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Contains the nodes in this connection.
      public var edges: [Edge?] {
        get {
          return (resultMap["edges"] as! [ResultMap?]).map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["BankAccountNodeEdge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node? = nil) {
          self.init(unsafeResultMap: ["__typename": "BankAccountNodeEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge
        public var node: Node? {
          get {
            return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["BankAccountNode"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("nature", type: .nonNull(.scalar(BankAccountNature.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String, nature: BankAccountNature) {
            self.init(unsafeResultMap: ["__typename": "BankAccountNode", "id": id, "name": name, "nature": nature])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID of the object.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// like credit_card or savings
          public var nature: BankAccountNature {
            get {
              return resultMap["nature"]! as! BankAccountNature
            }
            set {
              resultMap.updateValue(newValue, forKey: "nature")
            }
          }
        }
      }
    }
  }
}

public final class LoginAccountMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginAccount($username: String!, $password: String!) {
      tokenAuth(input: {email: $username, password: $password}) {
        __typename
        token
        user {
          __typename
          id
          email
          firstName
          lastName
          name
        }
      }
    }
    """

  public let operationName: String = "loginAccount"

  public var username: String
  public var password: String

  public init(username: String, password: String) {
    self.username = username
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("tokenAuth", arguments: ["input": ["email": GraphQLVariable("username"), "password": GraphQLVariable("password")]], type: .object(TokenAuth.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(tokenAuth: TokenAuth? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "tokenAuth": tokenAuth.flatMap { (value: TokenAuth) -> ResultMap in value.resultMap }])
    }

    public var tokenAuth: TokenAuth? {
      get {
        return (resultMap["tokenAuth"] as? ResultMap).flatMap { TokenAuth(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "tokenAuth")
      }
    }

    public struct TokenAuth: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ObtainJSONWebTokenPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("token", type: .scalar(String.self)),
        GraphQLField("user", type: .object(User.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(token: String? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "ObtainJSONWebTokenPayload", "token": token, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserNode"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String, firstName: String, lastName: String, name: String) {
          self.init(unsafeResultMap: ["__typename": "UserNode", "id": id, "email": email, "firstName": firstName, "lastName": lastName, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of the object.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String {
          get {
            return resultMap["email"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var firstName: String {
          get {
            return resultMap["firstName"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String {
          get {
            return resultMap["lastName"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastName")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
