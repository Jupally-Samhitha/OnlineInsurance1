document.getElementById("appointment-form").addEventListener("submit", function (e) {
    e.preventDefault();
  
    const name = document.getElementById("name").value;
    const contact = document.getElementById("contact").value;
    const available = document.getElementById("available").value;
    const date = document.getElementById("date").value;
    const time = document.getElementById("time").value;
  
    addAppointment(name,contact,available, date, time);
    this.reset();
  });
  
  function addAppointment(name,contact,available, date, time) {
    const tableBody = document.querySelector("#appointment-table tbody");
    const row = document.createElement("tr");
  
    row.innerHTML = `
      <td>${name}</td>
      <td>${contact}</td>
	  <td>${available}</td>
      <td>${date}</td>
      <td>${time}</td>
      
      <td class="actions">
        <button class="edit" onclick="editAppointment(this)">Edit</button>
        <button class="delete" onclick="deleteAppointment(this)">Delete</button>
      </td>
    `;
  
    tableBody.appendChild(row);
  }
  
  function deleteAppointment(button) {
    button.closest("tr").remove();
  }
  
  function editAppointment(button) {
    const row = button.closest("tr");
    const cells = row.querySelectorAll("td");
    document.getElementById("name").value = cells[0].textContent;
    document.getElementById("contact").value = cells[1].textContent;
	document.getElementById("available").value = cells[1].textContent;
    document.getElementById("date").value = cells[2].textContent;
    document.getElementById("time").value = cells[3].textContent;
  
    row.remove();
  }