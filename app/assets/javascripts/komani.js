var keyCount = 0;
window.onkeydown = konami;
function konami(e) {
    if (e.keyCode === 38 && keyCount === 0) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 38 && keyCount === 1) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 40 && keyCount === 2) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 40 && keyCount === 3) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 37 && keyCount === 4) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 39 && keyCount === 5) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 37 && keyCount === 6) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 39 && keyCount === 7) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 66 && keyCount === 8) {
        keyCount++;
        console.log(keyCount);
    } else if (e.keyCode === 65 && keyCount === 9) {
        keyCount = 0;
        console.log('Konami');
        alert('打密技阿你');
    } else {
        keyCount = 0;
        console.log('fail');
    }
}