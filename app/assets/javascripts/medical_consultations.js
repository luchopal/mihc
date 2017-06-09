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

    var stage = new Konva.Stage({
        container: 'left_breast',
        width: 300,
        height: 300
    });
    var layer = new Konva.Layer();
    var left_breast_first_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 2,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 180
    });

    left_breast_first_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'red' : 'white');
        var value = this.fill() == 'red' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_first_quadrant').value = value;
        layer.draw();
    });
    // add the shape to the layer
    layer.add(left_breast_first_quadrant);

    var left_breast_second_quadrant = new Konva.Wedge({
        x: stage.getWidth() / 2,
        y: stage.getHeight() / 2,
        radius: 120,
        angle: 90,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4,
        rotation: 270
    });

    left_breast_second_quadrant.on('click', function() {
        this.fill(this.fill() == 'white' ? 'red' : 'white');
        var value = this.fill() == 'red' ? 1 : 0;
        document.getElementById('medical_consultation_physical_exam_attributes_breast_exam_attributes_left_breast_second_quadrant').value = value;
        layer.draw();
    });
    // add the shape to the layer
    layer.add(left_breast_second_quadrant);

    var circle = new Konva.Circle({
        x: stage.getWidth() / 2,
        y: stage.getHeight() / 2,
        radius: 30,
        fill: 'white',
        stroke: 'black',
        strokeWidth: 4
    });

    layer.add(circle);
    // add the layer to the stage
    stage.add(layer);
});