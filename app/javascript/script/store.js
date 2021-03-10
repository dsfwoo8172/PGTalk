const { data } = require("jquery");
// 現在先不用
window.addEventListener('turbolinks:load', function(){
  const getLocationBtn = document.querySelector('.get_location')
  if (!getLocationBtn) return
  let locationVals = null

  const options = {
    maximumAge: 0,
    timeout:5000,
    enableHighAccuracy:true
  }

  function success(position) {
    console.log(position.coords.longitude);
    console.log(position.coords.latitude);
    $.ajax({
      type: 'get',
      url: `/stores/get_location.json?latitude=${position.coords.latitude}&longitude=${position.coords.longitude}`,
      success: (result) => {
        // console.log(result)
        locationVals = result
        console.log(locationVals)
        createBtns(locationVals)
      },
      error: (err) => console.log(err.status)
    })
  }

  function error(err) {
    console.warn('ERROR(' + err.code + '): ' + err.message);
    alert('You can\'t get the position!')
  }
  getLocationBtn.addEventListener('click', (e) => {
    e.preventDefault()
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(success, error, options)
    }
  })
  
  function createBtns(vals) {
    if (!vals) {
      console.log('value missing')
    } else {
      let locationList = document.querySelector('.location_result_list')
      for (let i = 0; i < vals.length; i++) {
        attrVal = JSON.stringify(vals[i])
        let newLi = document.createElement('li')
        let newBtn = document.createElement('button')
        let newP = document.createElement('p')
        newP.innerHTML = vals[i].name
        newBtn.appendChild(newP)
        newBtn.classList.add('store-btn')
        newBtn.setAttribute('attributes', attrVal)
        newLi.appendChild(newBtn)
        locationList.appendChild(newLi)
      }
      buildData()
    }
  }

  function buildData() {
    const placeBtns = document.querySelectorAll('.location_result_list button')
    placeBtns.forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.preventDefault()
        information = JSON.parse(btn.getAttribute('attributes'))
        $.ajax({
          type: 'post',
          url: '/stores',
          data: {
            store: {
              store_name: information['name'],
              address: information['vicinity'],
              latitude: information['geometry']['location']['lat'],
              longitude: information['geometry']['location']['lng']
            }
          },
          success: (data, status) => {
            console.log(`Data: ${data} Status: ${status}`)
          },
          error: (err) => console.log(err)
        })
      })
    })
  }
})