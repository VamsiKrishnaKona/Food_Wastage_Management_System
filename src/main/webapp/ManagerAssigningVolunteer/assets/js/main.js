(function($) {

	"use strict";


	// Events
$('.dropdown-container')
	.on('click', '.dropdown-button', function() {
        $(this).siblings('.dropdown-list').toggle();
	})
	.on('input', '.dropdown-search', function() {
    	var target = $(this);
        var dropdownList = target.closest('.dropdown-list');
    	var search = target.val().toLowerCase();
    
    	if (!search) {
            dropdownList.find('li').show();
            return false;
        }
    
    	dropdownList.find('li').each(function() {
        	var text = $(this).text().toLowerCase();
            var match = text.indexOf(search) > -1;
            $(this).toggle(match);
        });
	})
	.on('change', '[type="checkbox"]', function() {
        var container = $(this).closest('.dropdown-container');
        var numChecked = container. find('[type="checkbox"]:checked').length;
    	container.find('.quantity').text(numChecked || 'Any');
	});

// JSON of States for demo purposes
var usStates = [
    { name: 'Delhi', abbreviation: 'branch'},
    { name: 'Mumbai', abbreviation: 'branch'},
    { name: 'Kolkata', abbreviation: 'branch'},
    { name: 'Chennai', abbreviation: 'branch'},
    { name: 'Bangalore', abbreviation: 'branch'},
    { name: 'Hyderabad', abbreviation: 'branch'},
    { name: 'Ahmedabad', abbreviation: 'branch'},
    { name: 'Pune', abbreviation: 'branch'},
    { name: 'Vizag', abbreviation: 'branch'},
];

// <li> template
var stateTemplate = _.template(
    '<li>' +
    	'<label class="checkbox-wrap"><input name="<%= abbreviation %>" value="<%= name %>" type="checkbox"> <span for="<%= name %>"><%= capName %></span> <span class="checkmark"></span></label>' +
    '</li>'
);

// Populate list with states
_.each(usStates, function(s) {
    s.capName = _.startCase(s.name.toLowerCase());
    $('ul').append(stateTemplate(s));
});
	 
})(jQuery);
