import axios from '@/backend/vue-axios/axios'

const apiService = {
  getAll (resource) {
    return axios.get(`${resource}`)
  },
  post (resource, params) {
    return axios.post(`${resource}`, params)
  },
  get (resouce, id) {
    return axios.get(`${resouce}/${id}`).catch(error => {
      throw new Error(`ApiService ${error}`)
    })
  }
}

export default apiService

export const conversationsService = {
  create (params) {
    return apiService.post('/conversations', {
      name: params.conversation.name
    })
  },
  get (id) {
    return apiService.get('/conversations', id)
  }
}

export const messagesService = {
  getAll () {
    return apiService.getAll('/messages')
  },
  get (id) {
    return apiService.get('/messages', id)
  },
  post (params) {
    return apiService.post('/messages', {
      content: params.message.conten,
      user_id: params.message.user_id,
      conversation_id: params.message.conversation_id
    })
  }
}
