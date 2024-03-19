(function(){"use strict";var t={6118:function(t,n,e){var o=e(5130),r=e(6768);const i={id:"app"},c={class:"main-background-container"},u={class:"container"},a={class:"footer-background-container"},s={class:"container"};function l(t,n,e,o,l,d){const b=(0,r.g2)("MainContent"),k=(0,r.g2)("FooterSection");return(0,r.uX)(),(0,r.CE)("div",i,[(0,r.Lk)("div",c,[(0,r.Lk)("div",u,[(0,r.bF)(b)])]),(0,r.Lk)("div",a,[(0,r.Lk)("div",s,[(0,r.bF)(k)])])])}const d={class:"main-content-wrapper"};function b(t,n,e,o,i,c){const u=(0,r.g2)("LinkInputSection"),a=(0,r.g2)("LinkRedirectSection"),s=(0,r.g2)("LinkOutputInfoSection"),l=(0,r.g2)("LinkRedirectInfoSection");return(0,r.uX)(),(0,r.CE)("main",d,[(0,r.bF)(u),(0,r.bF)(a),(0,r.bF)(s),(0,r.bF)(l)])}const k=t=>((0,r.Qi)("data-v-6407fb32"),t=t(),(0,r.jt)(),t),f={class:"link-input-section"},p=k((()=>(0,r.Lk)("h1",{class:"header-link-title"},"Create short link",-1))),h=k((()=>(0,r.Lk)("div",{class:"buttons-container"},[(0,r.Lk)("button",{type:"reset",class:"link-clear-button clear-button blue-button"},"Reset"),(0,r.Lk)("button",{type:"submit",class:"link-submit-button submit-button green-button"},"Submit")],-1)));function v(t,n,e,i,c,u){return(0,r.uX)(),(0,r.CE)("section",f,[p,(0,r.Lk)("form",{class:"create-form",onSubmit:n[1]||(n[1]=(0,o.D$)(((...t)=>u.handleSubmit&&u.handleSubmit(...t)),["prevent"]))},[(0,r.bo)((0,r.Lk)("input",{"onUpdate:modelValue":n[0]||(n[0]=t=>c.longLink=t),type:"url",name:"long_link",id:"long_link",placeholder:"https://example.com"},null,512),[[o.Jo,c.longLink]]),h],32)])}var L={data(){return{longLink:""}},methods:{handleSubmit(){console.log("Long link submitted:",this.longLink)}}},m=e(1241);const g=(0,m.A)(L,[["render",v],["__scopeId","data-v-6407fb32"]]);var _=g;const S=t=>((0,r.Qi)("data-v-a189aba6"),t=t(),(0,r.jt)(),t),y={class:"link-redirect-section"},C=S((()=>(0,r.Lk)("h1",{class:"header-redirect-title"},"Use short link",-1))),E=S((()=>(0,r.Lk)("div",{class:"buttons-container"},[(0,r.Lk)("button",{type:"reset",class:"redirect-clear-button clear-button blue-button"},"Reset"),(0,r.Lk)("button",{type:"submit",class:"redirect-submit-button submit-button green-button"},"Go to URL")],-1)));function O(t,n,e,i,c,u){return(0,r.uX)(),(0,r.CE)("section",y,[C,(0,r.Lk)("form",{class:"redirect-form",onSubmit:n[1]||(n[1]=(0,o.D$)(((...t)=>u.handleSubmit&&u.handleSubmit(...t)),["prevent"]))},[(0,r.bo)((0,r.Lk)("input",{"onUpdate:modelValue":n[0]||(n[0]=t=>c.shortLink=t),type:"url",name:"short_link",id:"short_link",placeholder:"Just add short link"},null,512),[[o.Jo,c.shortLink]]),E],32)])}var j={data(){return{shortLink:""}},methods:{handleSubmit(){console.log("Short link submitted:",this.shortLink),window.location.href=this.shortLink}}};const w=(0,m.A)(j,[["render",O],["__scopeId","data-v-a189aba6"]]);var I=w,X=e(4232);const F={class:"link-output-info-section"},A={key:0},R=["href"],x={key:1};function U(t,n,e,o,i,c){return(0,r.uX)(),(0,r.CE)("section",F,[e.shortLink?((0,r.uX)(),(0,r.CE)("p",A,[(0,r.eW)("Short Link: "),(0,r.Lk)("a",{href:e.shortLink},(0,X.v_)(e.shortLink),9,R)])):((0,r.uX)(),(0,r.CE)("p",x,"No short link available"))])}var J={props:{shortLink:String}};const M=(0,m.A)(J,[["render",U],["__scopeId","data-v-764eb7e1"]]);var Q=M;const D={class:"link-redirect-info-section"},N={key:0},P={key:1};function T(t,n,e,o,i,c){return(0,r.uX)(),(0,r.CE)("section",D,[e.reply?((0,r.uX)(),(0,r.CE)("p",N,(0,X.v_)(e.reply),1)):((0,r.uX)(),(0,r.CE)("p",P,"No reply available"))])}var V={props:{reply:String}};const W=(0,m.A)(V,[["render",T],["__scopeId","data-v-237b2916"]]);var $=W,G={components:{LinkInputSection:_,LinkRedirectSection:I,LinkOutputInfoSection:Q,LinkRedirectInfoSection:$}};const Y=(0,m.A)(G,[["render",b]]);var q=Y;const z=t=>((0,r.Qi)("data-v-c15a4ddc"),t=t(),(0,r.jt)(),t),B={class:"footer"},H=z((()=>(0,r.Lk)("p",null,"© 2024 Your Website",-1))),K=[H];function Z(t,n,e,o,i,c){return(0,r.uX)(),(0,r.CE)("footer",B,K)}var tt={};const nt=(0,m.A)(tt,[["render",Z],["__scopeId","data-v-c15a4ddc"]]);var et=nt,ot={components:{MainContent:q,FooterSection:et}};const rt=(0,m.A)(ot,[["render",l]]);var it=rt;(0,o.Ef)(it).mount("#app")}},n={};function e(o){var r=n[o];if(void 0!==r)return r.exports;var i=n[o]={exports:{}};return t[o].call(i.exports,i,i.exports,e),i.exports}e.m=t,function(){var t=[];e.O=function(n,o,r,i){if(!o){var c=1/0;for(l=0;l<t.length;l++){o=t[l][0],r=t[l][1],i=t[l][2];for(var u=!0,a=0;a<o.length;a++)(!1&i||c>=i)&&Object.keys(e.O).every((function(t){return e.O[t](o[a])}))?o.splice(a--,1):(u=!1,i<c&&(c=i));if(u){t.splice(l--,1);var s=r();void 0!==s&&(n=s)}}return n}i=i||0;for(var l=t.length;l>0&&t[l-1][2]>i;l--)t[l]=t[l-1];t[l]=[o,r,i]}}(),function(){e.n=function(t){var n=t&&t.__esModule?function(){return t["default"]}:function(){return t};return e.d(n,{a:n}),n}}(),function(){e.d=function(t,n){for(var o in n)e.o(n,o)&&!e.o(t,o)&&Object.defineProperty(t,o,{enumerable:!0,get:n[o]})}}(),function(){e.g=function(){if("object"===typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(t){if("object"===typeof window)return window}}()}(),function(){e.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)}}(),function(){var t={524:0};e.O.j=function(n){return 0===t[n]};var n=function(n,o){var r,i,c=o[0],u=o[1],a=o[2],s=0;if(c.some((function(n){return 0!==t[n]}))){for(r in u)e.o(u,r)&&(e.m[r]=u[r]);if(a)var l=a(e)}for(n&&n(o);s<c.length;s++)i=c[s],e.o(t,i)&&t[i]&&t[i][0](),t[i]=0;return e.O(l)},o=self["webpackChunkvue_url_short_project"]=self["webpackChunkvue_url_short_project"]||[];o.forEach(n.bind(null,0)),o.push=n.bind(null,o.push.bind(o))}();var o=e.O(void 0,[504],(function(){return e(6118)}));o=e.O(o)})();
//# sourceMappingURL=app.dd56a8ff.js.map