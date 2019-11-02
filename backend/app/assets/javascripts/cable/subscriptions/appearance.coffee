App.cable.subscriptions.create "AppearanceChannel",

    connected: ->
        @install()
        @appear()

    disconnected: ->
        @uninstall()

    rejected: ->
        @uninstall()

    appear: ->
        @perform("appear", appearing_on: $("main").data("appearing-on"))

    away: ->
        @perform("away")

    buttonSelector = "[data-behavior~=appear_away]"

    install: ->
        $(document).on "page:change.appearance", =>
            @appear()

        $(document).on "click.appearance", buttonSelector, => 
            @away()
            false

        $(buttonSelector).show
    
    uninstall: ->
        $(document).off(".appearance")
        $(buttonSelector).hide()

