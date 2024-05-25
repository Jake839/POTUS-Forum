// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "./controllers";

// For chartkick.com
import "chartkick";
import "Chart.bundle";

//Globally disable Turbo for forms 
Turbo.setFormMode("off");

//= require jquery3


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


//If user votes for question, scroll to that question. If user clicks POTUS Forum image at top, stay at page top. 
document.addEventListener("DOMContentLoaded", function () {
    var votedQuestionId = document.querySelector("#selected-question").getAttribute("data-voted-question-id");
    var scrollParameter = new URLSearchParams(window.location.search).get("scroll_to_top");

    // Check if the session storage indicates that we need to scroll to the voted question
    var scrollToVotedQuestion = sessionStorage.getItem("scroll_to_voted_question");

    if (scrollParameter === "true") {
        // Scroll to the top of the page
        $('html, body').animate({ scrollTop: 0 }, 1000); // Adjust the duration as needed
         } else if (scrollToVotedQuestion && votedQuestionId) {
         // Scroll to the selected question
         $('html, body').animate({
            scrollTop: $(`#question_${votedQuestionId}`).offset().top - 110
         }, 1000); // Adjust the duration as needed
        // Clear the flag so it doesn't scroll again on the next reload
        sessionStorage.removeItem("scroll_to_voted_question");
    }
});