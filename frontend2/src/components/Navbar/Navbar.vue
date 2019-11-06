<template>
    <nav class="navbar navbar-dark chat-app">
        <router-link to="/" class="nav-link">Rooms</router-link>
        <span class="navbar-text">
            <router-link to="/logout" class="btn btn-logout btn-sm">Logout</router-link>
        </span>
    </nav>
</template>

<script>
import { mapGetters } from "vuex";
export default {
    name: "Navbar"
}
</script>