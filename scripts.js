
function showData(tableName) {
    var tableHead = document.getElementById("table-head");
    var tableBody = document.querySelector("#data-table tbody");
    tableBody.innerHTML = ""; // Önceki verileri temizle
    var details = document.getElementById("details");
    details.innerHTML = ""; // Formu temizle

    if (tableName === 'employee') {
        tableHead.innerHTML = `
            <tr>
                <th scope="col">SSN</th>
                <th scope="col">Name</th>
                <th scope="col">Surname</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Salary</th>
                <th scope="col">Section</th>
            </tr>`;
        tableBody.innerHTML += `
            <tr>
                <td>1</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>123456789</td>
                <td>mark@example.com</td>
                <td>$1000</td>
                <td>Delicattesen</td>
            </tr>`;
    } else if (tableName === 'product_info') {
        tableHead.innerHTML = `
            <tr>
                <th scope="col">Barkod No</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Weight</th>
                <th scope="col">Brand</th>
                <th scope="col">Shelf-Section</th>
            </tr>`;
        tableBody.innerHTML += `
            <tr>
                <td>1</td>
                <td>Product 1</td>
                <td>$10</td>
                <td>1kg</td>
                <td>Brand A</td>
                <td>Section 1</td>
            </tr>`;
    } else if (tableName === 'product_inventory') {
        tableHead.innerHTML = `
            <tr>
            <th scope="col">Product Number</th>
                <th scope="col">Expiration Date</th>
                <th scope="col">Production Date</th>
                
            </tr>`;
        tableBody.innerHTML += `
            <tr>
            <td>1001</td>
                <td>2023-12-31</td>
                <td>2023-01-01</td>
                
            </tr>`;
    } else if (tableName === 'market') {
        tableHead.innerHTML = `
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Location</th>
                <th scope="col">Employee Number</th>
                <th scope="col">Income</th>
                <th scope="col">Expense</th>
                <th scope="col">Local Storage Size</th>
                <th scope="col">Local Storage Vehicles</th>
                <th scope="col">Local Storage Section</th>
            </tr>`;
        tableBody.innerHTML += `
            <tr>
                <td>1</td>
                <td>New York</td>
                <td>50</td>
                <td>$10000</td>
                <td>$5000</td>
                <td>5000 sq ft</td>
                <td>10</td>
                <td>Section A</td>
            </tr>`;
    } else if (tableName === 'main_location') {
        tableHead.innerHTML = `
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Location</th>
                <th scope="col">Employee Number</th>
                <th scope="col">Manager Number</th>
                <th scope="col">Main Storage Size</th>
                <th scope="col">Main Storage Vehicles</th>
                <th scope="col">Main Storage Minimum Size</th>
            </tr>`;
        tableBody.innerHTML += `
            <tr>
                <td>1</td>
                <td>Los Angeles</td>
                <td>100</td>
                <td>5</td>
                <td>10000 sq ft</td>
                <td>20</td>
                <td>8000 sq ft</td>
            </tr>`;
    }
}


function addEmployee() {
    var details = document.getElementById("data-table");
    details.innerHTML = "";
    details.innerHTML = `
        <div class="col-md-10">
            <form class="row g-3">
                <div class="col-md-6">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="col-md-6">
                    <label for="surname" class="form-label">Surname</label>
                    <input type="text" class="form-control" id="surname">
                </div>
                <div class="col-md-6">
                    <label for="ssn" class="form-label">SSN</label>
                    <input type="number" class="form-control" id="ssn">
                </div>
                <div class="col-md-6">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email">
                </div>
                <div class="col-md-6">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="number" class="form-control" id="phone">
                </div>
                <div class="col-md-6">
                    <label for="salary" class="form-label">Salary</label>
                    <input type="number" class="form-control" id="salary">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Add Employee</button>
                </div>
            </form>
        </div>`;
}

function addProduct() {
    var details = document.getElementById("data-table");
    details.innerHTML = "";
    details.innerHTML = `
        <div class="col-md-10">
            <form class="row g-3">
                <div class="col-md-6">
                    <label for="barkodno" class="form-label">Barkod No</label>
                    <input type="number" class="form-control" id="barkodno">
                </div>
                <div class="col-md-6">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="col-md-6">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" class="form-control" id="price">
                </div>
                <div class="col-md-6">
                    <label for="weight" class="form-label">Weight</label>
                    <input type="number" class="form-control" id="weight">
                </div>
                <div class="col-md-6">
                    <label for="brand" class="form-label">Brand</label>
                    <input type="text" class="form-control" id="brand">
                </div>
                <div class="col-md-6">
                    <label for="shelfsection" class="form-label">Shelf Section</label>
                    <input type="text" class="form-control" id="shelfsection">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                </div>
            </form>
        </div>`;
}

function searchBarkod(event) {
    event.preventDefault();
    var barkod = document.getElementById("barkod").value;
    var tableBody = document.querySelector("#data-table tbody");
    var rows = tableBody.querySelectorAll("tr");
    rows.forEach(row => {
        if (row.cells[0] && row.cells[0].innerText !== barkod) {
            row.style.display = "none";
        } else {
            row.style.display = "";
        }
    });
}

function searchSSN(event) {
    event.preventDefault();
    var ssn = document.getElementById("ssn").value;
    var tableBody = document.querySelector("#data-table tbody");
    var rows = tableBody.querySelectorAll("tr");
    rows.forEach(row => {
        if (row.cells[0] && row.cells[0].innerText !== ssn) {
            row.style.display = "none";
        } else {
            row.style.display = "";
        }
    });
}

function searchExpiration(event) {
    event.preventDefault();
    var expiration = document.getElementById("expiration").value;
    var tableBody = document.querySelector("#data-table tbody");
    var rows = tableBody.querySelectorAll("tr");
    rows.forEach(row => {
        if (row.cells[1] && row.cells[1].innerText !== expiration) {
            row.style.display = "none";
        } else {
            row.style.display = "";
        }
    });
}

