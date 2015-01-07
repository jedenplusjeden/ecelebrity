function getDomain(e) {
    var t = e.split(".");
    if (t[0] === "www" && t[1] !== "com") t.shift();
    var n, r = t.length,
        i = r,
        s = t[t.length - 1].length,
        o;
    while (o = t[--i])
        if (i === 0 || i < r - 2 || o.length < s || TLDs.indexOf(o) < 0) n = o;
    var u = e.indexOf(n);
    return e.substring(u)
}

function smCreateCookie(e, t, n) {
    var r = "";
    if (n) {
        var i = new Date;
        i.setTime(i.getTime() + n * 24 * 60 * 60 * 1e3);
        r = "; expires=" + i.toGMTString()
    }
    document.cookie = e + "=" + t + r + "; path=/; domain=." + getDomain(document.domain)
}

function createCookie(e, t, n) {
    var r = "";
    if (n) {
        var i = new Date;
        i.setTime(i.getTime() + n * 24 * 60 * 60 * 1e3);
        r = "; expires=" + i.toGMTString()
    }
    document.cookie = e + "=" + t + r + "; path=/; domain=." + getDomain(document.domain)
}

function smReadCookie(e) {
    var t = e + "=";
    var n = document.cookie.split(";");
    for (var r = 0; r < n.length; r++) {
        var i = n[r];
        while (i.charAt(0) == " ") i = i.substring(1, i.length);
        if (i.indexOf(t) == 0) return i.substring(t.length, i.length)
    }
    return null
}

function readCookie(e) {
    var t = e + "=";
    var n = document.cookie.split(";");
    for (var r = 0; r < n.length; r++) {
        var i = n[r];
        while (i.charAt(0) == " ") i = i.substring(1, i.length);
        if (i.indexOf(t) == 0) return i.substring(t.length, i.length)
    }
    return null
}

function eraseCookie(e) {
    smCreateCookie(e, "", -1)
}

function checkExcludedUrls(e) {
    if (e != null) {
        for (var t = 0; t < e.length; t++) {
            if (window.location.toString().indexOf(e[t]) >= 0) {
                return false
            }
        }
    }
    return true
}

function buildClientParams() {
    if (smclientCookie != null && typeof smclientCookie !== "undefined") {
        sm_client_params = "?contactId=" + smclientCookie
    }
    if (uuid)
        if (sm_client_params != "") sm_client_params = sm_client_params + "&uuid=" + uuid;
        else sm_client_params = sm_client_params + "?uuid=" + uuid
}

function isIdentified() {
    return smclientCookie != null && typeof smclientCookie !== "undefined"
}

function htmlContent(formSRC, formID, isBasedOnShow, minVis, maxVis, hideToIdentified, delay, css) {
    var g = true;
    if (isIdentified() && hideToIdentified == true) g = false;
    for (var y = 0; y < popupVerificator.length; y++) {
        if (popupVerificator[y].pr_id == formID) {
            if (popupVerificator[y].pr_cl == "0") {
//                console.log(popupVerificator[y]);
                if (isBasedOnShow == true) {
                    //pojedyncze odslony
                    if ((Number(minVis) < Number(popupVerificator[y].pr_sn) && Number(maxVis) > Number(popupVerificator[y].pr_sn) || minVis == "0" && maxVis == "0") && g == true) {
                        setTimeout(function(){
                            jQuery.magnificPopup.open({
                                items: {
                                    src: formSRC
                                },
                                type: 'iframe',
                                iframe: {
                                    markup: '<div class="mfp-iframe-scaler '+ css + '">'+
                                        '<div class="mfp-close"></div>'+
                                        '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
                                        '</div>'
                                },
                                callbacks: {
                                    close: function(){
                                    }
                                },
                                closeOnBgClick: false,
                                closeOnContentClick: false
                            }, 0);
                        }, delay);
                    }
                } else {
                    //wizyty
                    if ((Number(minVis) < Number(popupVerificator[y].pr_vn) && Number(maxVis) > Number(popupVerificator[y].pr_vn) || minVis == "0" && maxVis == "0") && g == true) {
                        setTimeout(function(){
                            jQuery.magnificPopup.open({
                                items: {
                                    src: formSRC
                                },
                                type: 'iframe',
                                iframe: {
                                    markup: '<div class="mfp-iframe-scaler '+ css + '">'+
                                        '<div class="mfp-close"></div>'+
                                        '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
                                        '</div>'
                                },
                                callbacks: {
                                    close: function(){
                                    }
                                },
                                closeOnBgClick: false,
                                closeOnContentClick: false
                            }, 0);
                        }, delay);
                    }
                }
            }
        }
    }
}

function closePopupCF(t) {
    resolveForm(form);
    var i = updatePopupCookie(t, t);
    form = "VN=" + VN + ":SN=" + SN + ":TS=" + TS + ":Closed=" + Closed + ":PU=" + i;
    smCreateCookie("smform", form, 365 * 10)
}

function listener(e) {
    try {
        if (e.data == 'newsletter_sign') {
            closePopupCF("ddrhgreppkv546qw");
            return;
        }
        if (e.data == 'popup_close') {
            jQuery.magnificPopup.close();
            return;
        }
        if (e.origin !== "https://www.salesmanago.pl" && event.origin !== "http://www.salesmanago.pl") return;
        if (e.data.indexOf("smclientid:") == 0) {
            var t = e.data.replace("smclientid:", "");
            smCreateCookie("smclient", t, 10 * 365)
        }
    } catch (n) {}
}

function resolveForm(e) {
    var t = e.split(":");
    for (var n = 0; n < t.length; n++) {
        var r = t[n];
        if (r.indexOf("VN") == 0) VN = r.replace("VN=", "");
        if (r.indexOf("SN") == 0) SN = r.replace("SN=", "");
        if (r.indexOf("TS") == 0) TS = r.replace("TS=", "");
        if (r.indexOf("Closed") == 0) Closed = r.replace("Closed=", "");
        if (r.indexOf("PU") == 0) PU = r.replace("PU=", "")
    }
}

function updatePopupCookie(e, t) {
    var n = PU.split("|");
    var r = "";
    var i = true;
    for (var s = 0; s < n.length; s++) {
        var o = n[s];
        var u = o.split("-");
        if (u.length == 5) {
            var a = u[0];
            var f = u[1];
            var l = u[2];
            var c = u[3];
            var h = u[4];
            if (t != null && t == u[4]) {
                c = "1"
            }
            var p = (new Date).getTime();
            if (e == u[4]) {
                if (p - l > 3 * 60 * 60 * 1e3) {
                    a++;
                    f = 1;
                }
                else {
                    f++;
                }
                i = false;
                r = r + a + "-" + f + "-" + p + "-" + c + "-" + h + "|";
                popupVerificator.push({
                    pr_vn: a,
                    pr_sn: f,
                    pr_ts: p,
                    pr_cl: c,
                    pr_id: h
                })
            } else {
                r = r + a + "-" + f + "-" + l + "-" + c + "-" + h + "|";
                popupVerificator.push({
                    pr_vn: a,
                    pr_sn: f,
                    pr_ts: l,
                    pr_cl: c,
                    pr_id: h
                })
            }
        }
    }
    if (i) {
        var d = (new Date).getTime();
        r = r + "1-1-" + d + "-0-" + e + "|";
        popupVerificator.push({
            pr_vn: "1",
            pr_sn: "1",
            pr_ts: d,
            pr_cl: "0",
            pr_id: e
        })
    }
    return scaleCookie(r)
}

function scaleCookie(e) {
    var t = e.split("|");
    if (t.length > 5) {
        var n = "";
        for (var r = 1; r < t.length; r++) {
            if (t[r] != "") n = n + t[r] + "|"
        }
        return n
    } else return e
}

function updateFormCookie(e) {
    if (typeof form !== "undefined" && form != null) {
        resolveForm(form);
        var t = (new Date).getTime();
        if (t - TS > 3 * 60 * 60 * 1e3) {
            VN++;
            SN = 1;
        }
        else {
            SN++;
        }
        popupVerificator = [];
        var n = updatePopupCookie(e, null);
        form = "VN=" + VN + ":SN=" + SN + ":TS=" + t + ":Closed=" + Closed + ":PU=" + n
    } else {
        var r = updatePopupCookie(e, null);
        form = "VN=1:SN=1:TS=" + (new Date).getTime() + ":Closed=false" + ":PU=" + r
    }
    smCreateCookie("smform", form, 365 * 10)
}

function initPopup() {
//    if (window.location.toString().indexOf("zamowienie") < 0) {
        var excludedUrls = [];;
        if (checkExcludedUrls(excludedUrls)) {
            updateFormCookie("ddrhgreppkv546qw");
            buildClientParams();
            htmlContent("http://app2.salesmanago.pl/cf/g3n3kujta5nkphpn/form_newsletter.htm", "ddrhgreppkv546qw", true, 2, 4, true, 10 * 1000, "popup_400_600");
        }
//    }
}
jQuery(document).ready(function() {
//    jQuery('#htmlcontent_top').find('.htmlcontent-item-3 a').on('click', function(){
//        jQuery.magnificPopup.open({
//            items: {
//                src: 'http://app2.salesmanago.pl/cf/g3n3kujta5nkphpn/form_newsletter.htm'
//            },
//            type: 'iframe',
//            iframe: {
//                markup: '<div class="mfp-iframe-scaler popup_400_600">'+
//                    '<div class="mfp-close"></div>'+
//                    '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
//                    '</div>'
//            },
//            callbacks: {
//                close: function(){
//                }
//            },
//            closeOnBgClick: false,
//            closeOnContentClick: false
//        }, 0);
//       return false;
//    });
});
var sm_content_short_id;
var sm_client_params = "";
var VN = 0,
    SN = 0,
    TS = 0,
    Closed = "",
    PU = "";
var smclientCookie = smReadCookie("smclient");
var uuid = smReadCookie("smuuid");
var form = smReadCookie("smform");
var popupVerificator = new Array;
var TLDs = ["ac", "ad", "ae", "aero", "af", "ag", "ai", "al", "am", "an", "ao", "aq", "ar", "arpa", "as", "asia", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "biz", "bj", "bm", "bn", "bo", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cat", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "com", "coop", "cr", "cu", "cv", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "edu", "ee", "eg", "er", "es", "et", "eu", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gov", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "info", "int", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jobs", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mg", "mh", "mil", "mk", "ml", "mm", "mn", "mo", "mobi", "mp", "mq", "mr", "ms", "mt", "mu", "museum", "mv", "mw", "mx", "my", "mz", "na", "name", "nc", "ne", "net", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "org", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "pro", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "st", "su", "sv", "sy", "sz", "tc", "td", "tel", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tp", "tr", "travel", "tt", "tv", "tw", "tz", "ua", "ug", "uk", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "xn--0zwm56d", "xn--11b5bs3a9aj6g", "xn--3e0b707e", "xn--45brj9c", "xn--80akhbyknj4f", "xn--90a3ac", "xn--9t4b11yi5a", "xn--clchc0ea0b2g2a9gcd", "xn--deba0ad", "xn--fiqs8s", "xn--fiqz9s", "xn--fpcrj9c3d", "xn--fzc2c9e2c", "xn--g6w251d", "xn--gecrj9c", "xn--h2brj9c", "xn--hgbk6aj7f53bba", "xn--hlcj6aya9esc7a", "xn--j6w193g", "xn--jxalpdlp", "xn--kgbechtv", "xn--kprw13d", "xn--kpry57d", "xn--lgbbat1ad8j", "xn--mgbaam7a8h", "xn--mgbayh7gpa", "xn--mgbbh1a71e", "xn--mgbc0a9azcg", "xn--mgberp4a5d4ar", "xn--o3cw4h", "xn--ogbpf8fl", "xn--p1ai", "xn--pgbs0dh", "xn--s9brj9c", "xn--wgbh1c", "xn--wgbl6a", "xn--xkc2al3hye2a", "xn--xkc2dl3a5ee0h", "xn--yfro4i67o", "xn--ygbi2ammx", "xn--zckzah", "xxx", "ye", "yt", "za", "zm", "zw"].join();
initPopup();
if (window.addEventListener) addEventListener("message", listener, false);
else attachEvent("onmessage", listener)