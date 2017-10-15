import Vue from 'vue'

app = new Vue
    el: '#main'
    data:
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
