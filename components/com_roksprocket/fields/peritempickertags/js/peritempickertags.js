/*
 * @version   $Id: peritempickertags.js 10889 2013-05-30 07:48:35Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2014 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
((function(){if(typeof this.RokSprocket=="undefined"){this.RokSprocket={};
}var a=(Browser.name=="ie"&&Browser.version<=9)?"keypress":"input";this.PerItemPickerTags=new Class({Implements:[Options,Events],options:{},initialize:function(c){this.setOptions(c);
this.attach();},getPickers:function(){this.pickers=document.getElements("[data-peritempickertags]");return this.pickers;},attach:function(c){var d=(c?new Elements([c]).flatten():this.getPickers());
this.fireEvent("beforeAttach",d);d.each(function(i){var e=i.getElement("select"),j=i.getElement("[data-peritempickertags-display]"),h=i.getElement("#"+i.get("data-peritempickertags-id"));
var l=e.retrieve("roksprocket:pickers:change",function(m){this.change.call(this,m,e);}.bind(this)),g=j.retrieve("roksprocket:pickers:input",function(m){this.keypress.call(this,m,j,h,e);
}.bind(this)),f=j.retrieve("roksprocket:pickers:focus",function(m){this.focus.call(this,m,j,h);}.bind(this)),k=j.retrieve("roksprocket:pickers:blur",function(m){this.blur.call(this,m,j,h,e);
}.bind(this));if(!h.get("value").test(/^-([a-z]{1,})-$/)){j.store("display_value",j.get("value")||"");h.store("user_value",h.get("value")||"");}e.addEvent("change",l);
j.addEvent(a,g);j.addEvent("focus",f);},this);this.fireEvent("afterAttach",d);},detach:function(c){var d=(c?new Elements([c]).flatten():this.pickers);this.fireEvent("beforeDetach",d);
d.each(function(g){var i=g.retrieve("roksprocket:pickers:change"),f=g.retrieve("roksprocket:pickers:input"),e=g.getElement("select"),h=g.getElement("[data-peritempickertags-display]");
e.removeEvent("change",i);h.removeEvent(a,f);},this);if(!c){document.store("roksprocket:pickers:document",false).removeEvent("click",this.bounds.document);
}this.fireEvent("afterDetach",d);},change:function(e,c){var g=c.get("value"),d=c.getParent(".peritempickertags-wrapper"),f=d.getElement("input[type=hidden]"),h=d.getElement("[data-peritempickertags-display]"),j=d.getElement(".sprocket-dropdown [data-toggle]"),i=j.getElement("span.name");
if(g.test(/^-([a-z]{1,})-$/)){d.addClass("peritempickertags-noncustom");i.set("text",c.getElement("[value="+g+"]").get("text"));h.set("value",c.get("value"));
f.set("value",g);}else{d.removeClass("peritempickertags-noncustom");i.set("text","");if(h.get("value").test(/^-([a-z]{1,})-$/)){h.set("value",h.retrieve("display_value",""));
f.set("value",f.retrieve("user_value",""));}this.keypress(false,h,f,c);}RokSprocket.tags.reset(d.getElement("[data-tags]"));},keypress:function(e,g,d,c){var f=g.get("value");
this.update(d,f);},focus:function(d,e,c){new b(c,e);},update:function(c,e){c=document.id(c);var d=c.getParent("[data-peritempickertags]"),g=d.getElement("[data-peritempickertags-display]"),f=g.get("value");
g.set("value",f).store("display_value",f);c.set("value",f).store("juser_value",f);}});var b=new Class({Implements:[Options,Events],options:{},initialize:function(c,e,d){this.setOptions(d);
this.input=document.id(c);this.display=document.id(e);this.wrapper=null;this.textarea=null;this.build();},build:function(){this.wrapper=new Element("div.peritempickertags-textarea-wrapper").adopt(new Element("span[data-peritempickertags-close].close",{html:"&times;"}),new Element("textarea.peritempickertags-textarea")).inject(document.body);
this.wrapper.styles({position:"absolute"});this.textarea=this.wrapper.getElement("textarea");this.attach();this.show();return this;},destroy:function(){this.detach();
this.wrapper.dispose();return this;},attach:function(){var c=this.wrapper.retrieve("roksprocket:pickers:textarea",function(e){this.keypress.call(this,e);
}.bind(this)),d=this.wrapper.retrieve("roksprocket:pickers:close",function(e){this.keypress.call(this,e);this.destroy.call(this,e);}.bind(this));document.body.addEvent("keyup:keys(esc)",d);
this.textarea.addEvent("keydown",c);this.wrapper.addEvents({"blur:relay(textarea)":d,"click:relay(.close)":d});return this;},detach:function(){var c=this.wrapper.retrieve("roksprocket:pickers:textarea"),d=this.wrapper.retrieve("roksprocket:pickers:close");
document.body.removeEvent("keyup:keys(esc)",d);this.textarea.removeEvent("keydown",c);this.wrapper.removeEvents({"blur:relay(textarea)":d,"click:relay(.close)":d});
return this;},keypress:function(d){var e=this.textarea.get("value");this.input.set("value",e);this.display.set("value",e);if(d&&d.type=="keydown"){if(d.key=="tab"){var c=this.input.getNext("[type!=hidden]");
c.set("tabindex",0).focus();c.set("tabindex",null);}}return this;},show:function(){this.wrapper.styles({display:"block"}).position({relativeTo:this.display});
this.textarea.set("value",this.display.get("value"));this.textarea.focus();return this;},hide:function(){this.wrapper.styles({display:"none"});return this;
},toElement:function(){return this.wrapper;}});window.addEvent("domready",function(){this.RokSprocket.peritempickertags=new PerItemPickerTags();});})());
