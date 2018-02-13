scroll_post = ScrollComponent.wrap(timeline)
scroll_post.scrollHorizontal = false

scroll_post.on Events.Scroll, ->
	if scroll_post.scrollY <= 0 then scroll_post.scrollY = 0

bookmark.on Events.Click, ->
	if bookmarked.opacity == 0
		bookmarked.opacity = 100
		bookmark.opacity = 0
		bookmarked.scale = 0.5
		bookmarked.animate
			scale: 1
			options:
				curve: Spring(damping: 0.5)
				time: 0.5
	else
		bookmark.opacity = 100
		bookmarked.opacity = 0

