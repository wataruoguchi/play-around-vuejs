import Vue from 'vue'

menus = [
	{
		title: 'General'
		sub_menus: [
			{
				name: 'Dashboard'
				active: true
			}
			{
				name: 'Customers'
				active: false
			}
		]
	}
	{
		title: 'Administration'
		sub_menus: [
			{
				name: 'Users'
				active: false
			}
		]
	}
	{
		title: 'Transactions'
		sub_menus: [
			{
				name: 'Payments'
				active: false
			}
			{
				name: 'Transfers'
				active: false
			}
			{
				name: 'Balance'
				active: false
			}
		]
	}
]

app_menu_list_template = '
	<div>
		<app-menu :title="menu.title" :sub_menus="menu.sub_menus" v-for="menu in menus" :key="menu.title">
		</app-menu>
	</div>
	'

Vue.component 'app-menu-list',
	template: app_menu_list_template
	data: () ->
		menus: menus

app_menu_template = '
	<div>
		<p class="menu-label">
			{{ title }}
		</p>
		<ul class="menu-list">
			<li v-for="menu in sub_menus">
				<a :class="isActive(menu)" >
					{{ menu.name }}
				</a>
			</li>
		</ul>
	</div>
	'

Vue.component 'app-menu',
	props: [ 'title', 'sub_menus' ]
	template: app_menu_template
	methods:
		isActive: (menu) ->
			if menu.active then 'is-active' else ''

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
