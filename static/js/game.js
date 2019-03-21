
let user = document.getElementsByClassName("header")[0].dataset.user;

const card = document.getElementsByClassName('card');

let card1_name = "";
let card1_meaning = "";
let card1_polarity = "";
let card1_route = "";

let card2_name = "";
let card2_meaning = "";
let card2_polarity = "";
let card2_route = "";

let card3_name = "";
let card3_meaning = "";
let card3_polarity = "";
let card3_route = "";

let count = 0;

for (let i = 0 ;i<card.length;i++) {
        card[i].addEventListener('click', function () {
            if (count === 0) {
                let card_route = this.dataset.card_route;
                this.setAttribute('src', card_route);
                this.setAttribute('class', "cardFront");
                card1_name = this.dataset.card_name;
                card1_meaning = this.dataset.card_meaning;
                card1_polarity =this.dataset.card_polarity;
                card1_route = this.dataset.card_route;
                count++;
            }
            else if (count === 1) {
                let card_route = this.dataset.card_route;
                this.setAttribute('src', card_route);
                this.setAttribute('class', "cardFront");
                card2_name = this.dataset.card_name;
                card2_meaning = this.dataset.card_meaning;
                card2_polarity =this.dataset.card_polarity;
                card2_route = this.dataset.card_route;
                count++;
            }
            else if (count === 2) {
                let card_route = this.dataset.card_route;
                this.setAttribute('src', card_route);
                this.setAttribute('class', "cardFront");
                card3_name = this.dataset.card_name;
                card3_meaning = this.dataset.card_meaning;
                card3_polarity =this.dataset.card_polarity;
                card3_route = this.dataset.card_route;
                count++;
                setTimeout(function() {ShowPrediction()}, 2000)
            }
        })
}

let button = document.getElementById('btn');

button.addEventListener('mouseover',function () {
    button.style.backgroundColor = 'red';
});

button.addEventListener('mouseout', function () {
    button.style.backgroundColor ='darkred';
});


let textarea = document.getElementById('area');

textarea.addEventListener('mouseover', function () {

    textarea.style.backgroundColor = 'red';
});

textarea.addEventListener('mouseout', function () {
    textarea.style.backgroundColor = 'darkred';
});


function ShowPrediction() {
    document.getElementById("main").innerHTML =
        "<img class='card1' src=" + card1_route + ">" +
        "<img class='card2' src=" + card2_route + ">" +
        "<img class='card3' src=" + card3_route + ">" +
        "<img class='img' src='/static/css/Josno.jpg' >" +
        "<textarea readonly cols='160' rows='10'></textarea>"
}

