const axios = require('axios');
const url = "http://daemon.myriade.io/getinfo"

const healthcheckUrl = "https://hc-ping.com/d287985e-866a-41f7-944e-f509843d4fe8"

function poller(){
  console.log(`Healthcheck starting: ${new Date()}`)
  axios.get(url)
  .then(async (response) => {
    if(response.data.status == 'OK') {
      await axios.get(healthcheckUrl) 
      console.log("Healthcheck OK")
    }
    
  })
  .catch(error => {
    console.log(error);
  });


}
console.log("Starting healthcheck system")
const everyHour = 1000 * 60 * 60
setInterval(poller, everyHour);
