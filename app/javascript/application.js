// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// For chartkick.com
import "chartkick"
import "Chart.bundle"

//Globally disable Turbo for forms 
Turbo.setFormMode("off")

//Prevent user from voting for a question without selecting a choice. Added per ChatGPT 11/2/23. 
document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('vote-form');
    const voteButton = document.getElementById('vote-button');

    form.addEventListener('submit', function (event) {
        const selectedChoice = form.querySelector('input[name="question[choice_id]"]:checked');

        if (!selectedChoice) {
            alert("Please select an answer choice before voting.");
            event.preventDefault(); // Prevent form submission
        }
    });
});

