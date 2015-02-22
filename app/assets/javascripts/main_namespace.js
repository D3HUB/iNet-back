/**
 Define one Global var.
 the following is taken from "Maintainable JavaScript by Nicholas Zakas(O’Reilly). Copyright 2012 Nicholas Zakas, 978-1-449-32768-2"
 */
var iNet = {
    // assurance that the namespace only creat once.
    namespace: function(ns) {
        var parts = ns.split("."),
            object = this,
            i;

        for (i=0 ; i < parts.length; i++) {

            if (!object[parts[i]]) {
                object[parts[i]] = {};
            }

            object = object[parts[i]];
        }
        return object;
    }
};