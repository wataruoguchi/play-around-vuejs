import Vue from 'vue'

Vue.component 'app-menu',
	props: ['title']
	template: '
		<div>
			<p class="menu-label">
				{{ title }}
			</p>
			<ul class="menu-list">
				<li><a><slot></slot></a></li>
			</ul>
		</div>
	' # hmm backquote is not compiled in coffee

app = new Vue
	el: '#app'
	data:
		{}

new Vue
    el: '#main'
    data:
        first: ''
        last: ''
        message: 'Hello World'
        intro: 'Welcome!<small>small</small><strong>STRONG</strong>'
        viewed: true
        notviewed: false
        immutable: 'v-once is immutable'
        hovertext: 'Hoverrrr Loaded:' + new Date()
        imgurl: 'https://recollect.wpengine.com/wp-content/uploads/2015/10/ReCollect-Wataru-Oguchi.jpg'
        letters : [
            { id: 1, text: 'A' }
            { id: 2, text: 'B' }
            { id: 3, text: 'C' }
            { id: 4, text: 'D' }
        ]
        count: 10
        url: ""
        cleanurl: ""
        xp: 0
    computed:
        fullname: () ->
            @first + ' ' + @last
        level: () ->
            if @xp >= '200'
                'Expert'
            else if @xp >= 100
                'Intermediate'
            else if @xp >= 0
                'Beginner'
            else
                'Banned'
    methods:
        consolelog: () ->
            console.log 'hey'
        countup: () ->
            @count++
        humanizeUrl: () ->
            @cleanurl = @url.replace(/^https?:\/\//, '').replace(/\/$/, '')
        addXP: () ->
            @xp += 10
        decreaseXP: () ->
            @xp -= 10
