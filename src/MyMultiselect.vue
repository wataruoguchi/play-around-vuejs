<template>
    <div>
        <multiselect
            v-model="selected"
            :multiple="true"
            :options="options"
            track-by="name"
            :custom-label="title">
        </multiselect>
        <button @click="showSelected">Vue button</button>
    </div>
</template>

<script lang="coffee">
import Multiselect from 'vue-multiselect'
export default
    components: { Multiselect }
    data: () ->
        selected: null
        options: []
    created: () ->
        # Say this is Ajax
        receiveData = () =>
            data = [
                {
                    id: 1
                    name: "zone-name-1"
                    title: "Zone Name 1"
                }
                {
                    id: 2
                    name: "zone-name-2"
                    title: "Zone Name 2"
                }
                {
                    id: 3
                    name: "zone-name-3"
                    title: "Zone Name 3"
                }
            ]
            @options = data
        setTimeout receiveData, 1000
    methods:
        title: (option) ->
            option.title
        showSelected: () ->
            console.log @selected.map((d) -> d.name).join(',')
</script>

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
