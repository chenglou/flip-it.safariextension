    safari.application.addEventListener "validate", (event) ->
        if event.command is "flipIt"
            event.target.disabled = not safari.application.activeBrowserWindow.activeTab.url?

    safari.application.addEventListener "command", (event) ->
        if event.command is "flipIt"
            activeBrowserWindow = safari.application.activeBrowserWindow
            url = activeBrowserWindow.activeTab.url
            title = activeBrowserWindow.activeTab.title
            currentTime = new Date().getTime()
            shareUrl = "https://share.flipboard.com/flipit/load?v=1.0&url=#{url}&title=#{title}&t=#{currentTime}"
            activeBrowserWindow.openTab().url = shareUrl
