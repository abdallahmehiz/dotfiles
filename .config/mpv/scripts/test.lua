-- Function to show the stats page
function showStatsPage()
    mp.commandv("script-binding", "show-stats")
end

-- Trigger the showStatsPage function when a new file is loaded
mp.register_event("file-loaded", showStatsPage)
