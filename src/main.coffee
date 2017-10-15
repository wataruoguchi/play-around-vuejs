import Vue from 'vue'

app = new Vue
    el: '#main'
    data:
        message: 'Hello World'
        intro: 'Welcome!<small>small</small><strong>STRONG</strong>'
        viewed: true
        notviewed: false
        immutable: 'v-once is immutable'
