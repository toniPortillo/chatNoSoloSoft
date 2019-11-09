<template>
  <div class="col room text-center">
    <router-link :to="{ name: 'Conversation', params: { id: `${conversation._id}`} }">
      <H3>{{conversation.name}}</H3>
    </router-link>
  </div>
</template>

<script>
export default {
  name: 'Bucket',
  props: ['conversation'],
  data () {
    return this.conversation.name
  }
}
</script>
