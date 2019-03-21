
const card = document.getElementsByClassName('card');

let count = 0;

for (let i = 0 ;i<card.length;i++) {
    card[i].addEventListener('click',function () {
        if (count < 3) {
            let card_route = this.dataset.card_route;
            this.setAttribute('src', card_route);
            count++;
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
})

textarea.addEventListener('mouseout', function () {
    textarea.style.backgroundColor = 'darkred';
})