document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {characters: []

    },
    mounted: function() {
    	$.get('/api/v1/characters.json', function(characterResponse) {
    		this.characters = characterResponse;
    		console.log(characterResponse);
    	}.bind(this));
    },
    methods: {}
  });
});
