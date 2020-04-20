console.log("Entering login.js")

function openModal() {
      console.log("entering openModal")
      var myInput = document.getElementById("psw");
      var confirmMyInput = document.getElementById("cpsw");

      myInput.onkeyup = function () {

            confirmMyInput.onkeyup = function () {
                  var passEqualsConfPass = (myInput.value == confirmMyInput.value); // TODO: Change this to the condition that needs to be checked so that the text entered in password equals the text in confirm password
                  if (passEqualsConfPass) {
                        match.classList.remove("invalid");
                        match.classList.add("valid");
                  } else {
                        match.classList.remove("valid");
                        match.classList.add("invalid");
                  }

                  enableButton(letter, capital, number, length, match);
            }
      }


      function enableButton(letter, capital, number, length, match) {
            // TODO: Clear this function for students to implement    
            var button = document.getElementById('my_submit_button');
            var condition = (
                  letter.classList == "valid"
                  &&
                  capital.classList == "valid"
                  &&
                  number.classList == "valid"
                  &&
                  length.classList == "valid"
                  &&
                  match.classList == "valid"


            );
            if (condition) {
                  button.disabled = false;
            }
      }
}