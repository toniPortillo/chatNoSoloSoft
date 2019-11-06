export default class User {
  static from (obj) {
    try {
      return new User(obj)
    } catch (_) {
      return null
    }
  }

  constructor ({ userId, user, userName }) {
    this.id = userId
    this.user = user
    this.username = userName
  }

  get isUser () {
    return this.user
  }
}
