//Flot Pie Chart
$(function() {

    var data = [{
        label: "Assistente Social",
        data: 100
    }, {
        label: "Biólogo",
        data: 131
    }, {
        label: "Biomédico",
        data: 10
    }, {
        label: "Médico",
        data: 100
    },{
        label: "Profissional de Educação Física",
        data:15
    },{
        label: "Enfermeiro",
        data:500
    },{
        label: "Farmacêutico",
        data:140
    },{
        label: "Fonoaudiólogo",
        data:140
    },{
        label: "Médico Veterinário",
        data:10
    },{
        label: "Nutricionista",
        data:14
    },{
        label: "Odontólogo",
        data:11
    },{
        label: "Psicólogo",
        data:10
    },{
        label: "Terapeuta Ocupacional",
        data:17
    }
];

    var plotObj = $.plot($("#flot-pie-chart"), data, {
        series: {
            pie: {
                show: true
            }
        },
        grid: {
            hoverable: true
        },
        tooltip: true,
        tooltipOpts: {
            content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
              
            shifts: {
                x: 20,
                y: 0
            },
            defaultTheme: false
        }
    });

});