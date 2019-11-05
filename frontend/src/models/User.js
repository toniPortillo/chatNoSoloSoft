export default class User {
    constructor({ user_id, user, name }) {
        this.id = user_id;
        this.user = user;
        this.name = name
    }

    get isUser() {
        return this.user;
    }
}