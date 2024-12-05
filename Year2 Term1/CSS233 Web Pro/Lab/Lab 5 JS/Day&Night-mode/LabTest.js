const btn = document.querySelector('.DayLight');

const ChangeTheme = () => {
    document.querySelector('.content').classList.toggle('content-active');
    document.querySelector('span').style.color = 'blue';
    if (document.querySelector('.content-active')) {
        btn.innerHTML = 'Activate the day mode';
    } else {
        btn.innerHTML = 'Activate the night mode';
    }
}

btn.addEventListener('click', ChangeTheme);