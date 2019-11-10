<template>
    <nav class="navbar navbar-dark chat-app">
        <router-link to="/" class="nav-link">Conversations</router-link>
        <span class="navbar-text">
            <router-link to="/logout" class="btn btn-logout btn-sm">Logout</router-link>
        </span>
    </nav>
</template>

<script>
export default {
  name: 'Navbar'
}
</script>
