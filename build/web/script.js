/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnPopup = document.querySelector('.btnLogin-popup');
const btnClose = document.querySelector('.icon-close');

registerLink.addEventListener('click', () => {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', () => {
    wrapper.classList.remove('active');
});

btnPopup.addEventListener('click', () => {
    wrapper.classList.add('active-popup');
});

btnClose.addEventListener('click', () => {
    wrapper.classList.remove('active-popup');
});

function showText(id) {
    // Oculta todos los elementos con la clase water-info
    var waterInfoElements = document.querySelectorAll('.water-info');
    waterInfoElements.forEach(function(element) {
        element.style.display = 'none';
    });

    // Muestra el elemento correspondiente al id recibido como parámetro
    var selectedElement = document.getElementById(id);
    if (selectedElement) {
        selectedElement.style.display = 'block';
    }
}

