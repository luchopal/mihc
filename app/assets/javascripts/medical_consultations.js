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

    $("#check").click(function() {
        if( $("#check").is(':checked')) {
            $('#check').attr('src', whiteLogoPath);
        } else {
            $('#check').attr('src', blueLogoPath);
        }
    });
    var checked =  " <%= asset_path('checked.png') %>  ";
    var uncheck = " <%= asset_path('uncheck.png') %> ";

});