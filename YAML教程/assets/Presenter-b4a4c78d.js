import{o as d,f as y,g as e,B as k,C as A,v as h,d as T,i as B,a as P,D as S,x as p,E as H,_ as z,G as D,H as E,c as b,b as I,I as $,J as L,K as R,L as q,M as F,N as O,O as U,P as W,Q as Z,h as r,m as u,t as j,n as g,R as N,S as V,p as G,T as Y,U as x,V as J,F as K,W as Q,X,w as ee,Y as te,Z as se,q as M,$ as oe,a0 as le,a1 as ne,a2 as ae,k as re,a3 as ie,a4 as ce}from"./index-7974dd3d.js";import{N as ue}from"./NoteDisplay-d8a30d89.js";import de from"./DrawingControls-4982c107.js";const _e={class:"slidev-icon",viewBox:"0 0 32 32",width:"1.2em",height:"1.2em"},ve=e("path",{fill:"currentColor",d:"M12 10H6.78A11 11 0 0 1 27 16h2A13 13 0 0 0 6 7.68V4H4v8h8zm8 12h5.22A11 11 0 0 1 5 16H3a13 13 0 0 0 23 8.32V28h2v-8h-8z"},null,-1),me=[ve];function pe(o,n){return d(),y("svg",_e,me)}const he={name:"carbon-renew",render:pe},fe={class:"slidev-icon",viewBox:"0 0 32 32",width:"1.2em",height:"1.2em"},we=e("path",{fill:"currentColor",d:"M16 30a14 14 0 1 1 14-14a14 14 0 0 1-14 14Zm0-26a12 12 0 1 0 12 12A12 12 0 0 0 16 4Z"},null,-1),ge=e("path",{fill:"currentColor",d:"M20.59 22L15 16.41V7h2v8.58l5 5.01L20.59 22z"},null,-1),xe=[we,ge];function ke(o,n){return d(),y("svg",fe,xe)}const Se={name:"carbon-time",render:ke},ye="/review-work/YAML%E6%95%99%E7%A8%8B/assets/logo-title-horizontal-96c3c915.png";function Ce(){const o=k(Date.now()),n=A({interval:1e3}),_=h(()=>{const t=(n.value-o.value)/1e3,l=Math.floor(t%60).toString().padStart(2,"0");return`${Math.floor(t/60).toString().padStart(2,"0")}:${l}`});function v(){o.value=n.value}return{timer:_,resetTimer:v}}const be=T({__name:"NoteStatic",props:{class:{type:String,required:!1}},setup(o){const n=o;B(P);const _=h(()=>{var t,l,s;return(s=(l=(t=S.value)==null?void 0:t.meta)==null?void 0:l.slide)==null?void 0:s.note}),v=h(()=>{var t,l,s;return(s=(l=(t=S.value)==null?void 0:t.meta)==null?void 0:l.slide)==null?void 0:s.noteHTML});return(t,l)=>(d(),p(ue,{class:H(n.class),note:_.value,"note-html":v.value},null,8,["class","note","note-html"]))}}),$e=z(be,[["__file","/home/runner/work/review-work/review-work/node_modules/@slidev/client/internals/NoteStatic.vue"]]),f=o=>(Q("data-v-c173f153"),o=o(),X(),o),Ne={class:"bg-main h-full slidev-presenter"},Ve={class:"grid-container"},Me={class:"grid-section top flex"},Te=f(()=>e("img",{src:ye,class:"ml-2 my-auto h-10 py-1 lg:h-14 lg:py-2",style:{height:"3.5rem"}},null,-1)),Be=f(()=>e("div",{class:"flex-auto"},null,-1)),Pe={class:"text-2xl pl-2 pr-6 my-auto tabular-nums"},He=f(()=>e("div",{class:"context"}," current ",-1)),ze=f(()=>e("div",{class:"context"}," next ",-1)),Ae={class:"grid-section note overflow-auto"},De={class:"grid-section bottom"},Ee={class:"progress-bar"},Ie=T({__name:"Presenter",setup(o){B(P);const n=k();D(),E(n);const _=b.titleTemplate.replace("%s",b.title||"Slidev");I({title:`Presenter - ${_}`});const{timer:v,resetTimer:t}=Ce(),l=k([]),s=h(()=>$.value<L.value?{route:S.value,clicks:$.value+1}:R.value?{route:q.value,clicks:0}:null);return F(()=>{const C=n.value.querySelector("#slide-content"),i=O(U()),w=W();Z(()=>{if(!w.value||te.value||!se.value)return;const c=C.getBoundingClientRect(),a=(i.x-c.left)/c.width*100,m=(i.y-c.top)/c.height*100;if(!(a<0||a>100||m<0||m>100))return{x:a,y:m}},c=>{ee.cursor=c})}),(C,i)=>{const w=Se,c=he;return d(),y(K,null,[e("div",Ne,[e("div",Ve,[e("div",Me,[Te,Be,e("div",{class:"timer-btn my-auto relative w-22px h-22px cursor-pointer text-lg",opacity:"50 hover:100",onClick:i[0]||(i[0]=(...a)=>r(t)&&r(t)(...a))},[u(w,{class:"absolute"}),u(c,{class:"absolute opacity-0"})]),e("div",Pe,j(r(v)),1)]),e("div",{ref_key:"main",ref:n,class:"relative grid-section main flex flex-col p-2 lg:p-4",style:g(r(M))},[u(V,{key:"main",class:"h-full w-full"},{default:N(()=>[u(oe,{context:"presenter"})]),_:1}),He],4),e("div",{class:"relative grid-section next flex flex-col p-2 lg:p-4",style:g(r(M))},[s.value?(d(),p(V,{key:"next",class:"h-full w-full"},{default:N(()=>{var a;return[u(r(ne),{is:(a=s.value.route)==null?void 0:a.component,"clicks-elements":l.value,"onUpdate:clicksElements":i[1]||(i[1]=m=>l.value=m),clicks:s.value.clicks,"clicks-disabled":!1,class:H(r(le)(s.value.route)),route:s.value.route,context:"previewNext"},null,8,["is","clicks-elements","clicks","class","route"])]}),_:1})):G("v-if",!0),ze],4),e("div",Ae,[(d(),p($e,{key:1,class:"w-full max-w-full h-full overflow-auto p-2 lg:p-4"}))]),e("div",De,[u(ie,{persist:!0})]),(d(),p(de,{key:0}))]),e("div",Ee,[e("div",{class:"progress h-2px bg-primary transition-all",style:g({width:`${(r(ae)-1)/(r(re)-1)*100}%`})},null,4)])]),u(ce),u(J,{modelValue:r(x),"onUpdate:modelValue":i[2]||(i[2]=a=>Y(x)?x.value=a:null)},null,8,["modelValue"])],64)}}});const Fe=z(Ie,[["__scopeId","data-v-c173f153"],["__file","/home/runner/work/review-work/review-work/node_modules/@slidev/client/internals/Presenter.vue"]]);export{Fe as default};
