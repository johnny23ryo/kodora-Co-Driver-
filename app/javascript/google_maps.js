let directionsService;
let directionsRenderer;

window.initMap = function() {
  directionsService = new google.maps.DirectionsService();
  directionsRenderer = new google.maps.DirectionsRenderer();
  const map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: { lat: 35.682839, lng: 139.759455 }
  });
  directionsRenderer.setMap(map);
  directionsRenderer.setPanel(document.getElementById('directions-panel'));
}

document.addEventListener('DOMContentLoaded', function() {
  setCurrentLocationAsStart(); // 現在地を取得して出発地に設定する関数を呼び出す

  const searchForm = document.getElementById('search-form');
  if (searchForm) {
    searchForm.addEventListener('submit', handleSearchFormSubmit);
  }

  const routeForm = document.getElementById('route-form');
  if (routeForm) {
    routeForm.addEventListener('submit', handleRouteFormSubmit);
  }
});

function handleSearchFormSubmit(event) {
  event.preventDefault();
  document.getElementById('loading-message').style.display = 'block';
  document.getElementById('recommendation').innerText = '';
  document.getElementById('error-message').style.display = 'none';
  document.getElementById('search-button').disabled = true;

  const address = document.getElementById('address').value;
  fetch(event.target.action, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },
    body: JSON.stringify({ address: address })
  })
  .then(response => response.json())
  .then(data => {
    document.getElementById('loading-message').style.display = 'none';
    document.getElementById('search-button').disabled = false;
    if (data.error) {
      document.getElementById('error-message').innerText = `エラー: ${data.error}`;
      document.getElementById('error-message').style.display = 'block';
    } else {
      const result = data.place.name;
      document.getElementById('recommendation').innerText = `おすすめの場所:\n${result}`;
      calculateAndDisplayRouteFromCurrentLocation(result);
    }
  })
  .catch(error => {
    document.getElementById('loading-message').style.display = 'none';
    document.getElementById('search-button').disabled = false;
    document.getElementById('error-message').innerText = `エラー: ${error.message}`;
    document.getElementById('error-message').style.display = 'block';
  });
}

function handleRouteFormSubmit(event) {
  event.preventDefault();
  
  const formData = new FormData(event.target);
  const start = document.getElementById('start_location').value;
  const end = document.getElementById('end_location').value;
  if (start === '現在地') {
    const startLatitude = parseFloat(document.getElementById('start_latitude').value);
    const startLongitude = parseFloat(document.getElementById('start_longitude').value);
    calculateAndDisplayRoute({ lat: startLatitude, lng: startLongitude }, end);
  } else {
    calculateAndDisplayRoute(start, end);
  }
}

function calculateAndDisplayRouteFromCurrentLocation(end) {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      calculateAndDisplayRoute({ lat: latitude, lng: longitude }, end);
    }, () => {
      handleLocationError(true);
    });
  } else {
    handleLocationError(false);
  }
}

function calculateAndDisplayRoute(start, end) {
  directionsService.route({
    origin: start,
    destination: end,
    travelMode: 'DRIVING'
  }, (response, status) => {
    if (status === 'OK') {
      directionsRenderer.setDirections(response);
      const route = response.routes[0];
      const duration = route.legs[0].duration.text;
      document.getElementById('duration').innerText = `所要時間: ${duration}`;
    } else {
      window.alert('ルートリクエストが失敗しました: ' + status);
    }
  });
}

function handleLocationError(error) {
  let errorMessage = '不明なエラーが発生しました。';
  switch (error.code) {
    case error.PERMISSION_DENIED:
      errorMessage = '位置情報サービスの利用が拒否されました。ブラウザの設定から位置情報サービスを許可してください。';
      break;
    case error.POSITION_UNAVAILABLE:
      errorMessage = '位置情報の情報が利用できません。';
      break;
    case error.TIMEOUT:
      errorMessage = '位置情報のリクエストがタイムアウトしました。';
      break;
  }
  alert(errorMessage);
}

function setCurrentLocationAsStart() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      const startLocationInput = document.getElementById('start_location');
      const startLatitudeInput = document.getElementById('start_latitude');
      const startLongitudeInput = document.getElementById('start_longitude');
      if (startLocationInput && startLatitudeInput && startLongitudeInput) {
        startLocationInput.value = '現在地';
        startLatitudeInput.value = latitude;
        startLongitudeInput.value = longitude;
      }
    }, handleLocationError);
  } else {
    alert('このブラウザは位置情報サービスをサポートしていません。');
  }
}
