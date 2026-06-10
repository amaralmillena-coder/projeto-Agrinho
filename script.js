// Botão voltar ao topo

const topo = document.getElementById("topo");

topo.addEventListener("click", () => {
window.scrollTo({
top:0,
behavior:"smooth"
});
});

// Formulário

document.getElementById("formContato")
.addEventListener("submit", function(e){

e.preventDefault();

alert("Mensagem enviada com sucesso!");

});

// Contadores

const counters = document.querySelectorAll(".counter");

counters.forEach(counter => {

const atualizar = () => {

const alvo = +counter.getAttribute("data-target");
const valor = +counter.innerText;

const incremento = alvo / 100;

if(valor < alvo){
counter.innerText =
Math.ceil(valor + incremento);

setTimeout(atualizar,20);

}else{
counter.innerText = alvo;
}

};

atualizar();

});
