<template>
  <div class="conversation-page">
    <div class="container page">
      <div class="row room-content">
        <div class="col-xs-12">
          <div>
            <h3>{{conversation.name}}</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import store from '@/store/index'
import {
  FETCH_CONVERSATION,
  FETCH_MESSAGES
} from '@/store/actions-type'

export default {
  name: 'Conversation',
  created () {
    store.dispatch(FETCH_CONVERSATION, this.$route.params.id)
    store.dispatch(FETCH_MESSAGES, this.$route.params.id)
  },
  computed: {
    ...mapGetters({ conversation: 'conversation' })
  }
}
</script>
