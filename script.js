document.getElementById('searchForm').addEventListener('submit', async function(event) {
    event.preventDefault();
    const location = document.getElementById('location').value;
    const response = await fetch(`http://localhost:3000/colleges?location=${location}`);
    const colleges = await response.json();

    const resultsDiv = document.getElementById('resultsList');
    resultsDiv.innerHTML = '';

    colleges.forEach(async (college) => {
        const collegeDiv = document.createElement('div');
        collegeDiv.innerHTML = `<h3>${college.name}</h3>
                                <p>Location: ${college.location}</p>
                                <p>Contact: ${college.contact_number}</p>`;
        const coursesResponse = await fetch(`http://localhost:3000/courses/${college.id}`);
        const courses = await coursesResponse.json();

        const coursesList = document.createElement('ul');
        courses.forEach(course => {
            const courseItem = document.createElement('li');
            courseItem.textContent = course.course_name;
            coursesList.appendChild(courseItem);
        });
        collegeDiv.appendChild(coursesList);
        resultsDiv.appendChild(collegeDiv);
    });
});