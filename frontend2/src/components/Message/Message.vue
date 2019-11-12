<template>
  <div class="card">
    <ul class="list-group list-group-flush">
      <li class="list-group-item">{{ message.content }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Message',
  props: {
    message: {
      type: Object,
      required: true
    }
  }
}
</script>
