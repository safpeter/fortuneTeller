
const card = document.getElementsByClassName('card');

let count = 0

for (let i = 0 ;i<card.length;i++) {
    card[i].addEventListener('click',function () {
        if (count < 3) {
            card[i].style.visibility = 'hidden';
            count++;
        }})
}

