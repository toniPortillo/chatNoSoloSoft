<template>
  <div class="col room text-center">
    <router-link :to="{
      name: 'Conversation',
      params: { name: `${conversation.name}`, id: `${conversation.id}`}
      }">
      <H3>{{conversation.name}}</H3>
    </router-link>
  </div>
</template>

<script>
export default {
  name: 'Bucket',
  propos: ['conversation'],
  data () {
    return this.conversation.name
  }
}
</script>
