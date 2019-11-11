<template>
  <div>
    <list-errors :errors="errors">
    </list-errors>
    <form class="card message-form" v-on:submit.prevent="onSubmit(id, message)">
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
export default {  
}
</script>
