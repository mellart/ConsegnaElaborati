var giorniSettimana = ["lunedì", "martedì", "mercoledì", "giovedì", "venerdì", "sabato", "domenica"];

var meleRimanenti = 5;


for (i =0; i < giorniSettimana.length; i++) {
    console.log("oggi è " + giorniSettimana[i])
    console.log("ho mele rimanenti" + meleRimanenti)
    if (giorniSettimana[i] == "mercoledì"){
        console.log(" oggi non ho voglia di mele")
    } else if (meleRimanenti > 2){
        console.log("oggi ho voglia di una mela")
        meleRimanenti --
    }
    else {
        console.log("non posso più mangiare mele")
        break
    }
    
}

meleRimanenti--;

//fine del file
