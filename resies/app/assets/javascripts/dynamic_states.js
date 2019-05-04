var regions = new Array();
<% for region in @regions -%>
  regions.push(new Array(<%= region.paise_id %>, '<%=h region.nombre %>', <%= region.id %>));
<% end -%>

function countrySelected() {
  paise_id = $('person_country_id').getValue();
  options = $('person_state_id').options;
  options.length = 1;
  regions.each(function(region) {
    if (region[0] == paise_id) {
      options[options.length] = new Option(region[1], region[2]);
    }
  });
  if (options.length == 1) {
    $('state_field').hide();
  } else {
    $('state_field').show();
  }
}

document.observe('dom:loaded', function() {
  countrySelected();
  $('person_country_id').observe('change', countrySelected);
});
