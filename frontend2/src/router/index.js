import Vue from 'vue'
import Router from 'vue-router'
import SignUp from '@/components/SignUp/SignUp'
import HelloWorld from '@/components/HelloWorld'
import Logout from '@/components/Logout/Logout'
import ConversationList from '@/components/Conversations/List'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'SignUp',
      component: SignUp
    },
    {
      path: '/helloWorld',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/logout',
      name: 'Logout',
      component: Logout
    },
    {
      path: '/conversations',
      name: 'Conversations',
      component: ConversationList
    }
  ]
})
