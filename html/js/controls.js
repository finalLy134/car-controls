window.addEventListener('message', function(event) {
    let data = event.data;

    switch (data.type) {
        case 'show':
            this.document.getElementById("control-panel").style.display = 'inline-block';
        break;
        case 'hide':
            this.document.getElementById("control-panel").style.display = 'none';
        break;
    }
});

document.onkeyup = function(data) {
    if(data.which == 27) { // ESC or I
        axios.post(`https://${GetParentResourceName()}/hide`, {
            action: 'hide',
        });
    }
}

// Car Functions:
toggleEngine = function() {
    axios.post(`https://${GetParentResourceName()}/toggleEngine`, {
        action: 'toggle',
    });
}

toggleFrontHood = function() {
    axios.post(`https://${GetParentResourceName()}/toggleFrontHood`, {
        action: 'toggle',
    });
}

toggleTrunk = function() {
    axios.post(`https://${GetParentResourceName()}/toggleTrunk`, {
        action: 'toggle',
    });
}

toggleHeadlights = function() {
    axios.post(`https://${GetParentResourceName()}/toggleHeadlights`, {
        action: 'toggle',
    });
}

openDoor = function(index) {
    axios.post(`https://${GetParentResourceName()}/openDoor`, {
        action: 'open',
        doorIndex: index,
    });
}

openWindow = function(index) {
    axios.post(`https://${GetParentResourceName()}/openWindow`, {
        action: 'open',
        windowIndex: index,
    });
}

sitAtSeat = function(index) {
    axios.post(`https://${GetParentResourceName()}/sitAtSeat`, {
        action: 'sit',
        seatIndex: index,
    });
}