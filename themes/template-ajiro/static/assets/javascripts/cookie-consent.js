$( document ).ready(function() {
  const consent = localStorage.getItem("cookie-consent");
  if ( consent ) {
    $('#cookie-consent').alert('close')
  }
});


$('#cookie-consent').on('closed.bs.alert', function () {
  localStorage.setItem("cookie-consent", "OK");
})
