<template>
  <div>
    <div class="page-header">
      <h1>All Chat rooms</h1>
        <router-link :to="{name: 'ConversationNew'}" replace>
          <button type="button" class="btn btn-primary">Add new conversation</button>
        </router-link>
    </div>
    <div class='row'>
      <Bucket v-for="conversation in conversations" :key="conversation.id" :conversation="conversation" v-show=conversation.name></Bucket>
    </div>
  </div>
</template>

<script>
import Bucket from './Bucket'

export default {
  name: 'List',
  data () {
    return {
      conversations: []
    }
  },
  created () {
    this.axios.get('/conversations')
      .then(res => {
        console.log(res.data)
        this.buildConversationList(res.data)
      })
      .catch(() => {
        alert('Something went wrong')
      })
  },
  methods: {
    buildConversationList (data) {
      this.conversations = data
    }
  },
  components: {
    Bucket
  }
}
</script>
