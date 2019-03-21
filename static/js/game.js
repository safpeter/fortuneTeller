
const card = document.getElementsByClassName('card');

let card1_name = "";
let card1_meaning = "";
let card1_polarity = "";

let card2_name = "";
let card2_meaning = "";
let card2_polarity = "";

let card3_name = "";
let card3_meaning = "";
let card3_polarity = "";

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
                count++;
            }
            else if (count === 1) {
                let card_route = this.dataset.card_route;
                this.setAttribute('src', card_route);
                this.setAttribute('class', "cardFront");
                card2_name = this.dataset.card_name;
                card2_meaning = this.dataset.card_meaning;
                card2_polarity =this.dataset.card_polarity;
                count++;
            }
            else if (count === 2) {
                let card_route = this.dataset.card_route;
                this.setAttribute('src', card_route);
                this.setAttribute('class', "cardFront");
                card3_name = this.dataset.card_name;
                card3_meaning = this.dataset.card_meaning;
                card3_polarity =this.dataset.card_polarity;
                count++;
                setTimeout(ShowPrediction(), 3000)
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
    document.getElementsByTagName("body")[0].innerHTML =
        "<h1>Your future is(0,001% sure):</h1>"
}
