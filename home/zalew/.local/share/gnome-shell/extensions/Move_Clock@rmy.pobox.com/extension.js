// Copyright (C) 2011-2012 R M Yorston
// Licence: GPLv2+

const Clutter = imports.gi.Clutter;
const Lang = imports.lang;
const St = imports.gi.St;
const Shell = imports.gi.Shell;

const Main = imports.ui.main;
const SessionMode = imports.ui.sessionMode;

function MyBox(label) {
    this._init(label);
}

MyBox.prototype = {
    _init: function(label) {
        this.actor = new Shell.GenericContainer();
        this._label = label;
        this.actor.add_actor(label);
        this._width = 0;

        this.actor.connect('get-preferred-width', Lang.bind(this, this._getPreferredWidth));
        this.actor.connect('get-preferred-height', Lang.bind(this, this._getPreferredHeight));
        this.actor.connect('allocate', Lang.bind(this, this._allocate));
    },

    _getPreferredWidth: function(actor, forHeight, alloc) {
        let [minWidth, natWidth] = this._label.get_preferred_width(forHeight);

        alloc.min_size = minWidth;

        let delta = Math.abs(this._width - natWidth);
        if ( this._width == 0 || delta*100/this._width > 10 ) {
            alloc.natural_size = this._width = natWidth+4;
        }
        else if ( natWidth > this._width ) {
            alloc.natural_size = this._width = natWidth;
        }
        else {
            alloc.natural_size = this._width;
        }
    },

    _getPreferredHeight: function(actor, forWidth, alloc) {
        let [minHeight, natHeight] = this._label.get_preferred_height(forWidth);
        alloc.min_size = minHeight;
        alloc.natural_size = natHeight;
    },

    _allocate: function(actor, box, flags) {
        let availWidth = box.x2 - box.x1;
        let availHeight = box.y2 - box.y1;

        let [minChildWidth, minChildHeight, natChildWidth, natChildHeight] =
            this._label.get_preferred_size();

        let childWidth = Math.min(natChildWidth, availWidth);
        let childHeight = Math.min(natChildHeight, availHeight);

        let childBox = new Clutter.ActorBox();
        childBox.x1 = 0;
        childBox.y1 = 0;
        childBox.x2 = childBox.x1 + childWidth;
        childBox.y2 = childBox.y1 + childHeight;
        this._label.allocate(childBox, flags);
    }
};

let box;

function init() {
}

function enable() {
    let panel = SessionMode._modes['user'].panel;
    let dindex, uindex;

    dindex = panel.center.indexOf('dateMenu');
    if ( dindex > -1 ) {
        // remove clock from centre panel
        panel.center.splice(dindex, 1);
    }

    uindex = panel.right.indexOf('userMenu');
    dindex = panel.right.indexOf('dateMenu');
    if ( uindex > -1 && dindex == -1 ) {
        // add clock to right panel
        panel.right.splice(uindex, 0, 'dateMenu');
    }

    Main.panel._updatePanel();

    dindex = panel.right.indexOf('dateMenu');
    if ( dindex > -1 && box == null ) {
        // put clock label in a box to absorb size changes
        let dateMenu = Main.panel._ensureIndicator('dateMenu');
        let label = dateMenu._clockDisplay;

        dateMenu.actor.remove_actor(label);
        box = new MyBox(label);
        dateMenu.actor.add_actor(box.actor);
    }
}

function disable() {
    let panel = SessionMode._modes['user'].panel;
    let index;

    index = panel.center.indexOf('dateMenu');
    if ( index == -1 ) {
        // add clock to centre panel
        panel.center.push('dateMenu');
    }

    index = panel.right.indexOf('dateMenu');
    if ( index > -1 ) {
        // remove clock from right panel
        panel.right.splice(index, 1);
    }

    Main.panel._updatePanel();

    index = panel.center.indexOf('dateMenu');
    if ( index > -1 && box != null ) {
        // remove the box
        let dateMenu = Main.panel._ensureIndicator('dateMenu');
        let label = dateMenu._clockDisplay;

        box.actor.remove_actor(label);
        box.actor.destroy();
        box = null;
        dateMenu.actor.add_actor(label);
    }
}
