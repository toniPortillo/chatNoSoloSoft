<template>
  <div>
    <list-errors :errors="errors">
    </list-errors>
    <form class="card message-form" v-on:submit.prevent="onSubmit(message)">
      <div class="card-block">
        <textarea class="form-control" v-model="message" placeholder="Write a message..." rows="3">
        </textarea>
      </div>
      <div class="card-footer">
        <button class="btn btn-sm btn-primary">Post Message</button>
      </div>
    </form>
  </div>
</template>

<script>
import ListErrors from '@/components/ListErrors/ListErrors'
import { MESSAGE_CREATE } from '@/store/actions-type'

export default {
  name: 'MessageEditor',
  components: {
    ListErrors
  },
  props: {
    id: {
      type: String,
      required: true
    },
    content: {
      type: String,
      required: false
    }
  },
  data () {
    return {
      message: this.content || null,
      errors: {}
    }
  },
  methods: {
    onSubmit (message) {
      this.$store
        .dispatch(MESSAGE_CREATE, { message })
        .then(() => {
          this.message = null
          this.errors = {}
        })
        .catch(({ response }) => {
          this.errors = response.data
        })
    }
  }
}
</script>
