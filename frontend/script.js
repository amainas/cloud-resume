const apiUrl = "https://xx87qj496h.execute-api.eu-central-1.amazonaws.com/visitor";

fetch(apiUrl)
  .then(response => response.json())
  .then(data => {
    document.getElementById("counter").innerText = data.count;
  })
  .catch(error => {
    console.error("Error fetching visitor count:", error);
    document.getElementById("counter").innerText = "N/A";
  });

