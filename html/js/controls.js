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
        }).then((resp) => {
            console.log(JSON.stringify(resp.data));
        });
    }
}

// Car Functions:
toggleEngine = function() {
    axios.post(`https://${GetParentResourceName()}/toggleEngine`, {
        action: 'toggle',
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

toggleFrontHood = function() {
    axios.post(`https://${GetParentResourceName()}/toggleFrontHood`, {
        action: 'toggle',
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

toggleTrunk = function() {
    axios.post(`https://${GetParentResourceName()}/toggleTrunk`, {
        action: 'toggle',
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

toggleHeadlights = function() {
    axios.post(`https://${GetParentResourceName()}/toggleHeadlights`, {
        action: 'toggle',
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

openDoor = function(index) {
    axios.post(`https://${GetParentResourceName()}/openDoor`, {
        action: 'open',
        doorIndex: index,
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

openWindow = function(index) {
    axios.post(`https://${GetParentResourceName()}/openWindow`, {
        action: 'open',
        windowIndex: index,
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}

sitAtSeat = function(index) {
    axios.post(`https://${GetParentResourceName()}/sitAtSeat`, {
        action: 'sit',
        seatIndex: index,
    }).then((resp) => {
        console.log(JSON.stringify(resp.data));
    });
}