const url = "http://localhost:3000/api/pedido/";
let resultados = '';
const formArticulo = document.querySelector("form");
const userped = document.getElementById("NOMCON");
const emausped = document.getElementById("EMACON");
const celusped = document.getElementById("CELCON");
const msgped = document.getElementById("MSGPED");
var opcion = '';

btnCrear.addEventListener('click', () => {
	console.log("Acción de listar activada");
	opcion = 'crear';
});

formArticulo.addEventListener('submit',
	(e) => {
    	e.preventDefault();
    	if (opcion == 'crear') {
        	if (NOMCON.value == "" || EMACON.value == "" || CELCON.value == "" ||  MSGCON.value == "") {
            	alert("Asegúrese de que todos los campos estén completos");
            	return false;
        	} else {
            	console.log("Todos los campos están completos");
            	fetch(
                	url,
                	{
                    	method: 'POST',
                    	headers: {
                        	'content-Type':'application/json'
                    	},
                    	body: JSON.stringify(
                        	{
                            	NOMCON: NOMCON.value,
                            	EMACON: EMACON.value,
                            	CELCON: CELCON.value,
                            	ASUCON: ASUCON.value,
                            	MSGPED: MSGPED.value
                        	}
                    	)
                	}
            	)
            	.then(
                	response => response.json()
            	)
            	.then(
                	response => location.reload()
            	);
        	}
    	} else if(opcion == 'editar'){
        	console.log("Activado el ");
    	}
	}
);