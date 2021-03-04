window.addEventListener('DOMContentLoaded', function(){
  const getLocationBtn = document.querySelector('.get_location')
  getLocationBtn.addEventListener('click', () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(position => {
        console.log(position.coords.longitude);
        console.log(position.coords.latitude);
        $.ajax({
          type: 'get',
          url: `/stores/get_location.json?latitude=${position.coords.latitude}&longitude=${position.coords.longitude}`,
          success: (result) => console.log(result),
          error: (err) => console.log(err.status)
        })
      })
    }
  })
})