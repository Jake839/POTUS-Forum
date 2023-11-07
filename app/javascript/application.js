// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// For chartkick.com
import "chartkick"
import "Chart.bundle"

//Globally disable Turbo for forms 
Turbo.setFormMode("off")

//= require jquery

//Prevent user from voting for a question without selecting a choice. Added per ChatGPT 11/2/23. 
document.addEventListener('DOMContentLoaded', function () {
    const voteForms = document.querySelectorAll('[data-question-id]');

    voteForms.forEach(form => {
        form.addEventListener('submit', function (event) {
            const selectedChoice = form.querySelector('input[name="question[choice_id]"]:checked');

            if (!selectedChoice) {
                const questionId = form.dataset.questionId;
                alert("Please select an answer choice before voting.");
                event.preventDefault(); // Prevent form submission
            }
        });
    });
});



//Scroll to question user votes on 
document.addEventListener("DOMContentLoaded", function () {
    var votedQuestionId = document.querySelector("#selected-question").getAttribute("data-voted-question-id");
    
    if (votedQuestionId) {
        // Scroll to the selected question's anchor or perform any other action
        $('html, body').animate({
            scrollTop: $(`#question_${votedQuestionId}`).offset().top - 110
        }, 1000); // Adjust the duration as needed
    }
});
