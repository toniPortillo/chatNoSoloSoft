require action_cable

@App = {}
App.cable = ActionCable.createConsumer("ws://cable.example.com")