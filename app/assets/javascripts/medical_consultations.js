$(document).ready(function() {
    if( $("#abdomenCheckBox").is(':checked')) {
        $("#abdomenDiv").show();
    } else {
        $("#abdomenDiv").hide();
    }

    $("#abdomenCheckBox").click(function() {
        if( $("#abdomenCheckBox").is(':checked')) {
            $("#abdomenDiv").show();
        } else {
            $("#abdomenDiv").hide();
        }
    });

    if( $("#inspectionCheckBox").is(':checked')) {
        $("#inspectionDiv").show();
    } else {
        $("#inspectionDiv").hide();
    }

    $("#inspectionCheckBox").click(function() {
        if( $("#inspectionCheckBox").is(':checked')) {
            $("#inspectionDiv").show();
        } else {
            $("#inspectionDiv").hide();
        }
    });

    if( $("#palpationCheckBox").is(':checked')) {
        $("#palpationDiv").show();
    } else {
        $("#palpationDiv").hide();
    }

    $("#palpationCheckBox").click(function() {
        if( $("#palpationCheckBox").is(':checked')) {
            $("#palpationDiv").show();
        } else {
            $("#palpationDiv").hide();
        }
    });

    if( $("#percussionCheckBox").is(':checked')) {
        $("#percussionDiv").show();
    } else {
        $("#percussionDiv").hide();
    }

    $("#percussionCheckBox").click(function() {
        if( $("#percussionCheckBox").is(':checked')) {
            $("#percussionDiv").show();
        } else {
            $("#percussionDiv").hide();
        }
    });

    if( $("#activateProctochologicalExaminationCheckBox").is(':checked')) {
        $("#proctochologicalExaminationDiv").show();
    } else {
        $("#proctochologicalExaminationDiv").hide();
    }

    $("#activateProctochologicalExaminationCheckBox").click(function() {
        if( $("#activateProctochologicalExaminationCheckBox").is(':checked')) {
            $("#proctochologicalExaminationDiv").show();
        } else {
            $("#proctochologicalExaminationDiv").hide();
        }
    });

    if( $("#activateInguinocruralExaminationCheckBox").is(':checked')) {
        $("#inguinocruralExaminationDiv").show();
    } else {
        $("#inguinocruralExaminationDiv").hide();
    }

    $("#activateInguinocruralExaminationCheckBox").click(function() {
        if( $("#activateInguinocruralExaminationCheckBox").is(':checked')) {
            $("#inguinocruralExaminationDiv").show();
        } else {
            $("#inguinocruralExaminationDiv").hide();
        }
    });

    if( $("#activateCervicalExaminationCheckBox").is(':checked')) {
        $("#cervicalExaminationDiv").show();
    } else {
        $("#cervicalExaminationDiv").hide();
    }

    $("#activateCervicalExaminationCheckBox").click(function() {
        if( $("#activateCervicalExaminationCheckBox").is(':checked')) {
            $("#cervicalExaminationDiv").show();
        } else {
            $("#cervicalExaminationDiv").hide();
        }
    });

    if( $("#activateBreastExamCheckBox").is(':checked')) {
        $("#breastExamDiv").show();
    } else {
        $("#breastExamDiv").hide();
    }

    $("#activateBreastExamCheckBox").click(function() {
        if( $("#activateBreastExamCheckBox").is(':checked')) {
            $("#breastExamDiv").show();
        } else {
            $("#breastExamDiv").hide();
        }
    });

    if( $("#activateSkinLesionCheckBox").is(':checked')) {
        $("#skinLesionDiv").show();
    } else {
        $("#skinLesionDiv").hide();
    }

    $("#activateSkinLesionCheckBox").click(function() {
        if( $("#activateSkinLesionCheckBox").is(':checked')) {
            $("#skinLesionDiv").show();
        } else {
            $("#skinLesionDiv").hide();
        }
    });

    if( $("#activateScarCheckBox").is(':checked')) {
        $("#scarsDiv").show();
    } else {
        $("#scarsDiv").hide();
    }

    $("#activateScarCheckBox").click(function() {
        if( $("#activateScarCheckBox").is(':checked')) {
            $("#scarsDiv").show();
        } else {
            $("#scarsDiv").hide();
        }
    });

    if( $("#activatePainfulCheckBox").is(':checked')) {
        $("#painfulDiv").show();
    } else {
        $("#painfulDiv").hide();
    }

    $("#activatePainfulCheckBox").click(function() {
        if( $("#activatePainfulCheckBox").is(':checked')) {
            $("#painfulDiv").show();
        } else {
            $("#painfulDiv").hide();
        }
    });

    if( $("#auscultationCheckBox").is(':checked')) {
        $("#auscultationDiv").show();
    } else {
        $("#auscultationDiv").hide();
    }

    $("#auscultationCheckBox").click(function() {
        if( $("#auscultationCheckBox").is(':checked')) {
            $("#auscultationDiv").show();
        } else {
            $("#auscultationDiv").hide();
        }
    });
    $("#occupiedRectalAmpouleDiv").hide();
    $('#medical_consultation_physical_exam_attributes_proctochological_examination_attributes_rectal_ampoule').on('change', function() {
        if(this.value == "OCUPADA"){
            $("#occupiedRectalAmpouleDiv").show();
        }else{
            $("#occupiedRectalAmpouleDiv").hide();
        }
    })

    if( $("#formationCheckBox").is(':checked')) {
        $("#formationPositionDiv").show();
    } else {
        $("#formationPositionDiv").hide();
    }

    $("#formationCheckBox").click(function() {
        if( $("#formationCheckBox").is(':checked')) {
            $("#formationPositionDiv").show();
        } else {
            $("#formationPositionDiv").hide();
        }
    });

    var stage = new Konva.Stage({
        container: 'breast',
        width: 800,
        height: 300
    });
    var layer = new Konva.Layer();

    //---------------------------- Primer cuadrante pecho izquierdo -----------------------------------------------------
    var right_breast_first_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 180
    });

    right_breast_first_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_right_breast_first_quadrant').value = value;
        layer.draw();
    });
    // add the shape to the layer
    layer.add(right_breast_first_quadrant);

    //---------------------------- Segundo cuadrante pecho izquierdo -----------------------------------------------------
    var right_breast_second_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 270
    });

    right_breast_second_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_right_breast_second_quadrant').value = value;
        layer.draw();
    });
    layer.add(right_breast_second_quadrant);

    //---------------------------- Primer cuadrante pecho izquierdo -----------------------------------------------------
    var right_breast_third_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 90
    });

    right_breast_third_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_right_breast_third_quadrant').value = value;
        layer.draw();
    });
    layer.add(right_breast_third_quadrant);

    //---------------------------- Cuarto cuadrante pecho izquierdo -----------------------------------------------------
    var right_breast_fourth_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 0
    });

    right_breast_fourth_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_right_breast_fourth_quadrant').value = value;
        layer.draw();
    });
    layer.add(right_breast_fourth_quadrant);


    //---------------------------- Centro pecho izquierdo -----------------------------------------------------
    var left_breast_center = new Konva.Circle({
        x: stage.getWidth() / 4,
        y: stage.getHeight() / 2,
        radius: 30,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4
    });

    left_breast_center.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_center').value = value;
        layer.draw();
    });

    layer.add(left_breast_center);

    //---------------------------- Primer cuadrante pecho izquierdo -----------------------------------------------------
    var left_breast_first_quadrant = new Konva.Wedge({
        x: stage.getWidth()*3 / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 180
    });

    left_breast_first_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_first_quadrant').value = value;
        layer.draw();
    });
    // add the shape to the layer
    layer.add(left_breast_first_quadrant);

    //---------------------------- Segundo cuadrante pecho izquierdo -----------------------------------------------------
    var left_breast_second_quadrant = new Konva.Wedge({
        x: stage.getWidth()*3 / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 270
    });

    left_breast_second_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_second_quadrant').value = value;
        layer.draw();
    });
    layer.add(left_breast_second_quadrant);

    //---------------------------- Primer cuadrante pecho izquierdo -----------------------------------------------------
    var left_breast_third_quadrant = new Konva.Wedge({
        x: stage.getWidth()*3 / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 90
    });

    left_breast_third_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_third_quadrant').value = value;
        layer.draw();
    });
    layer.add(left_breast_third_quadrant);

    //---------------------------- Cuarto cuadrante pecho izquierdo -----------------------------------------------------
    var left_breast_fourth_quadrant = new Konva.Wedge({
        x: stage.getWidth()*3 / 4,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 0
    });

    left_breast_fourth_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_fourth_quadrant').value = value;
        layer.draw();
    });
    layer.add(left_breast_fourth_quadrant);


    //---------------------------- Centro pecho izquierdo -----------------------------------------------------
    var left_breast_center = new Konva.Circle({
        x: stage.getWidth()*3 / 4,
        y: stage.getHeight() / 2,
        radius: 30,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4
    });

    left_breast_center.on('click', function() {
        this.fill(this.fill() == 'white' ? 'blue' : 'white');
        var value = this.fill() == 'blue' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_center').value = value;
        layer.draw();
    });

    layer.add(left_breast_center);
    // add the layer to the stage
    stage.add(layer);
});