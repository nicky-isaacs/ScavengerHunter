// Declare constants and globals here
var totalPoints = 0;

// Function definitions

completeItem = function(id){

};

unCompleteItem = function(id){

};

checkItemUI = function(id){

}

uncheckItemUI = function(id){
    $().prop('checked');
}

updateItemStatus = function(id, isComplete){
    var onSuccess = function(data){

    };

    var onFailure = function(data){

    };

    var url = '/scavenger_hunt_items/' + id + '/complete';
    var params = {};
    params['id'] = id;
    params['complete'] = isComplete;
    $.ajax({
        url: url,
        params: params,
        type: 'PUT',
        success: function(data){
            onSuccess(data);
        },
        failure: function(data){
            onFailure(data);
        }
    });
};

updatePointsTotal = function(delta){
    totalPoints += delta;
};

updatePointsTotalUI = function(){
    $('div#total-points-wrapper p#total-points').html(totalPoints);
};

initTotalPoints = function(){
    var points = getPoints();
    $(points).each(function(index, item){
        updatePointsTotal(item);
        console.log("points: " + item);
    });
    updatePointsTotalUI();
}

getPoints = function(checkedOnly){
    var answer=[];
    $('table#items-table tbody tr').each(function(){
        var tds = $(this).children('td');
        var checked = $(tds[0]).checked;
        if(checked){
            var points = $(tds[tds.length - 1]).html();
            points = parseInt(points);
            answer.push(points);
        }
    });
    return answer;
}

// Whether the scavenger hunt is still open
stillOpen = function(){
    var time_now = Date.now();
    var end_time = $('dd#end-time').html;
    return true;
}

$( document ).ready(function(){
    initTotalPoints();

    if(!stillOpen){
        lockUI();
    }
});