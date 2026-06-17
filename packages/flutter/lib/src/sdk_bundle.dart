// AUTO-GENERATED — do not edit. Run pnpm build in packages/web to regenerate.
// ignore_for_file: lines_longer_than_80_chars
const String kRetailcodeSdkBundle = r'''
"use strict";var RetailcodeSDK=(()=>{var E=Object.defineProperty,Le=Object.defineProperties,Ae=Object.getOwnPropertyDescriptor,Me=Object.getOwnPropertyDescriptors,$e=Object.getOwnPropertyNames,ie=Object.getOwnPropertySymbols;var oe=Object.prototype.hasOwnProperty,Pe=Object.prototype.propertyIsEnumerable;var ne=(t,e,i)=>e in t?E(t,e,{enumerable:!0,configurable:!0,writable:!0,value:i}):t[e]=i,m=(t,e)=>{for(var i in e||(e={}))oe.call(e,i)&&ne(t,i,e[i]);if(ie)for(var i of ie(e))Pe.call(e,i)&&ne(t,i,e[i]);return t},g=(t,e)=>Le(t,Me(e));var He=(t,e)=>{for(var i in e)E(t,i,{get:e[i],enumerable:!0})},Re=(t,e,i,n)=>{if(e&&typeof e=="object"||typeof e=="function")for(let a of $e(e))!oe.call(t,a)&&a!==i&&E(t,a,{get:()=>e[a],enumerable:!(n=Ae(e,a))||n.enumerable});return t};var Oe=t=>Re(E({},"__esModule",{value:!0}),t);var Ve={};He(Ve,{RetailcodeTopup:()=>he});var ze=Object.defineProperty,re=Object.getOwnPropertySymbols,Be=Object.prototype.hasOwnProperty,Ie=Object.prototype.propertyIsEnumerable,ae=(t,e,i)=>e in t?ze(t,e,{enumerable:!0,configurable:!0,writable:!0,value:i}):t[e]=i,se=(t,e)=>{for(var i in e||(e={}))Be.call(e,i)&&ae(t,i,e[i]);if(re)for(var i of re(e))Ie.call(e,i)&&ae(t,i,e[i]);return t},h=class extends Error{constructor(t,e){super(t),this.status=e,this.name="RetailcodeApiError"}},je="https://corporateprodapi.retailcode.com.ng",le=class{constructor(t){this.publicKey=t,this.baseUrl=je}get authHeaders(){return{Authorization:`Bearer ${this.publicKey}`,Accept:"application/json"}}async fetchConfig(t){var e;let i=await fetch(`${this.baseUrl}/api/v1/auto-topup/public/config/${t}`,{headers:this.authHeaders});if(!i.ok)throw new h("Public API key is invalid or expired.",i.status);let n=await i.json();if(!n.success)throw new h((e=n.message)!=null?e:"Public API key is invalid or expired.");return n.data}async subscribeAirtime(t){var e;let n=await(await fetch(`${this.baseUrl}/api/v1/auto-topup/public/subscribe/airtime`,{method:"POST",headers:se({"Content-Type":"application/json"},this.authHeaders),body:JSON.stringify(t)})).json();if(!n.success)throw new h((e=n.message)!=null?e:"Subscription failed")}async subscribeData(t){var e;let n=await(await fetch(`${this.baseUrl}/api/v1/auto-topup/public/subscribe/data`,{method:"POST",headers:se({"Content-Type":"application/json"},this.authHeaders),body:JSON.stringify(t)})).json();if(!n.success)throw new h((e=n.message)!=null?e:"Subscription failed")}};function ce(t){let e=t.replace("#",""),i=e.length===3?e.split("").map(a=>a+a).join(""):e,n=parseInt(i,16);return{r:n>>16&255,g:n>>8&255,b:n&255}}function de(t,e){let{r:i,g:n,b:a}=ce(t),c=e>0?255:0,l=Math.abs(e)/100,p=u=>Math.min(255,Math.max(0,Math.round(u))).toString(16).padStart(2,"0");return"#"+p(i+(c-i)*l)+p(n+(c-n)*l)+p(a+(c-a)*l)}function y(t,e){let{r:i,g:n,b:a}=ce(t);return`rgba(${i},${n},${a},${e})`}function L(t){return t&&!["null","undefined",""].includes(String(t))?t:"#0057FF"}var De=/^(234[789][01]\d{8}|0[789][01]\d{8})$/;function pe(t){return De.test(t)}function ue(t){let e=t.replace(/\D/g,"");return e.length===11?e.replace(/(\d{4})(\d{3})(\d{4})/,"$1 $2 $3"):t}function me(t,e,i){let n=parseFloat(t);return!isNaN(n)&&n>=e&&n<=i}var A=null;function fe(){return window.Swal?Promise.resolve():A||(A=new Promise(t=>{let e=document.createElement("link");e.rel="stylesheet",e.href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css",document.head.appendChild(e);let i=document.createElement("script");i.src="https://cdn.jsdelivr.net/npm/sweetalert2@11",i.onload=()=>t(),document.head.appendChild(i)}),A)}function k(t){return window.Swal.fire(t)}function Y(t){let e=new URL(window.location.href);e.searchParams.set("status",t),window.history.replaceState({},"",e)}function M(t,e,i=!1){var l,p,u,d,f,b;let n=new URL(window.location.href);n.searchParams.set("isClose","true"),window.history.replaceState({},"",n),window.ReactNativeWebView||window.RetailcodeFlutter||(p=(l=window.webkit)==null?void 0:l.messageHandlers)!=null&&p.retailcode||(u=window.Android)!=null&&u.close||e==null||e(),t==null||t({closed:!0});let c=JSON.stringify({action:"close",success:i});window.ReactNativeWebView?window.ReactNativeWebView.postMessage(c):window.RetailcodeFlutter?window.RetailcodeFlutter.postMessage(c):(f=(d=window.webkit)==null?void 0:d.messageHandlers)!=null&&f.retailcode?window.webkit.messageHandlers.retailcode.postMessage({action:"close",success:i}):(b=window.Android)!=null&&b.close&&window.Android.close()}function ge(t,e){return{accent:t,accentHover:de(t,-10),accentFocus:y(t,.15),accentShadow:y(t,.25),fontFamily:e}}function J(t){return`
    @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&display=swap');
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    :host {
      display: flex;
      justify-content: center;
      min-height: 100vh;
      font-family: ${t.fontFamily};
      background: #FFFFFF;
      -webkit-overflow-scrolling: touch;
    }
    @media (min-width: 560px) {
      :host { background: rgba(0,0,0,.50); align-items: center; padding: 20px; }
    }

    .rc-modal {
      width: 100%; max-width: 440px; background: #FFFFFF; overflow: hidden;
      animation: modalSlide .35s cubic-bezier(.22,1,.36,1) both;
      border-radius: 0; box-shadow: none;
      overflow-y: auto;
      -webkit-overflow-scrolling: touch;
    }
    @media (min-width: 560px) {
      .rc-modal {
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0,0,0,.06), 0 12px 32px rgba(0,0,0,.12), 0 32px 64px rgba(0,0,0,.08);
        overflow-y: auto;
      }
    }
    @keyframes modalSlide { from { opacity:0; transform:translateY(16px); } to { opacity:1; transform:none; } }

    .rc-header { padding: 24px 20px 14px; }
    .rc-header-top { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 12px; }
    .rc-title h2 { font-size: 19px; font-weight: 700; color: #111827; letter-spacing: -.3px; }
    .rc-title p  { font-size: 13px; color: #6B7280; margin-top: 3px; line-height: 1.4; }

    .rc-close-btn {
      display: inline-flex; align-items: center; justify-content: center;
      width: 28px; height: 28px; background: #F3F4F6; border: none;
      border-radius: 6px; color: #6B7280; cursor: pointer; transition: background .15s; flex-shrink: 0;
    }
    .rc-close-btn:hover { background: #E5E7EB; }

    .rc-account-bar {
      display: flex; align-items: center; background: ${t.accent};
      padding: 10px 14px; border-radius: 6px; color: #fff;
    }
    .rc-dot { width: 8px; height: 8px; background: #4ADE80; border-radius: 50%; margin-right: 10px; box-shadow: 0 0 0 2px rgba(74,222,128,.3); flex-shrink: 0; }
    .rc-acc-label { font-size: 9.5px; font-weight: 700; text-transform: uppercase; letter-spacing: .06em; opacity: .65; display: block; margin-bottom: 1px; }
    .rc-acc-no    { font-size: 14px; font-weight: 700; letter-spacing: .03em; }

    .rc-content { padding: 20px 20px 16px; }
    .rc-group { margin-bottom: 14px; }
    .rc-group-title { font-size: 10px; font-weight: 700; color: #9CA3AF; text-transform: uppercase; letter-spacing: .09em; margin-bottom: 10px; }

    .rc-field { position: relative; margin-bottom: 10px; }
    .rc-field:last-child { margin-bottom: 0; }
    .rc-field label { position: absolute; left: 12px; top: 16px; font-size: 13.5px; color: #9CA3AF; transition: all .16s cubic-bezier(.4,0,.2,1); pointer-events: none; transform-origin: left top; }
    .rc-field input, .rc-field select {
      width: 100%; height: 52px; padding: 20px 12px 6px;
      background: #F9FAFB; border: 1.5px solid #E5E7EB; border-radius: 6px;
      font-family: inherit; font-size: 14px; font-weight: 500; color: #111827;
      outline: none; transition: border-color .18s, box-shadow .18s, background .18s;
      appearance: none; -webkit-appearance: none;
    }
    .rc-field select {
      background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='14' height='14' viewBox='0 0 24 24' fill='none' stroke='%236B7280' stroke-width='2.5' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'/%3E%3C/svg%3E");
      background-repeat: no-repeat; background-position: right 12px center; padding-right: 34px; cursor: pointer;
    }
    .rc-field input:focus, .rc-field select:focus {
      border-color: ${t.accent}; background: #FFFFFF; box-shadow: 0 0 0 3px ${t.accentFocus};
    }
    .rc-field.has-val label, .rc-field input:focus ~ label, .rc-field select:focus ~ label {
      top: 7px; font-size: 10.5px; font-weight: 700; color: ${t.accent};
    }
    .rc-field small { display: block; margin-top: 4px; font-size: 11px; color: #9CA3AF; }

    .rc-row { display: grid; gap: 10px; margin-bottom: 10px; }
    .rc-row .rc-field { margin-bottom: 0; }
    .rc-divider { height: 1px; background: #F3F4F6; margin: 16px 0; border: none; }
    .section-animate { animation: fadeIn .25s ease-out; }
    @keyframes fadeIn { from { opacity:0; transform:translateY(4px); } to { opacity:1; transform:none; } }

    .rc-link-wrap { margin-top: 12px; text-align: center; font-size: 13px; color: #9CA3AF; }
    .rc-link-wrap a { color: ${t.accent}; text-decoration: none; font-weight: 600; cursor: pointer; }
    .rc-link-wrap a:hover { text-decoration: underline; }

    .rc-submit-btn {
      width: 100%; height: 52px; background: ${t.accent}; color: #FFFFFF; border: none;
      border-radius: 6px; font-family: inherit; font-size: 15px; font-weight: 700;
      cursor: pointer; letter-spacing: .01em; margin-top: 6px;
      box-shadow: 0 4px 12px ${t.accentShadow};
      transition: background .18s, transform .1s, box-shadow .18s;
    }
    .rc-submit-btn:hover:not(:disabled) { background: ${t.accentHover}; transform: translateY(-1px); box-shadow: 0 6px 18px ${y(t.accent,.35)}; }
    .rc-submit-btn:active:not(:disabled) { transform: translateY(0); }
    .rc-submit-btn:disabled { opacity: .5; cursor: not-allowed; transform: none; }

    .rc-spinner-ring {
      width: 48px; height: 48px;
      border: 4px solid ${y(t.accent,.18)};
      border-top-color: ${t.accent};
      border-radius: 50%;
      animation: rc-spin .75s linear infinite;
    }
    @keyframes rc-spin { to { transform: rotate(360deg); } }

    .rc-footer {
      text-align: center; padding: 0 20px 18px; font-size: 11px; color: #D1D5DB;
      display: flex; align-items: center; justify-content: center; gap: 5px;
    }
    .rc-footer svg { opacity: .5; }
    .hidden { display: none !important; }
  `}function Ne(t){return new Promise(e=>{let i=document.createElement("div");i.style.cssText="position:fixed;inset:0;background:rgba(0,0,0,0.5);display:flex;align-items:center;justify-content:center;z-index:99999;padding:16px;box-sizing:border-box;";let n=document.createElement("div");n.style.cssText=`background:#fff;border-radius:12px;width:100%;max-width:480px;max-height:85vh;display:flex;flex-direction:column;font-family:${t.fontFamily};`;let a=document.createElement("div");a.style.cssText="padding:20px 24px 12px;font-size:18px;font-weight:700;color:#111827;text-align:center;flex-shrink:0;",a.textContent="Terms & Conditions";let c=document.createElement("div");c.style.cssText="flex:1;min-height:0;overflow-y:auto;-webkit-overflow-scrolling:touch;touch-action:pan-y;overscroll-behavior:contain;padding:0 24px 16px;font-size:13px;line-height:1.65;color:#374151;",c.innerHTML=t.html;let l=document.createElement("div");l.style.cssText="display:flex;gap:12px;padding:16px 24px;flex-shrink:0;border-top:1px solid #F3F4F6;";let p=f=>{document.body.style.overflow="",document.body.removeChild(i),e(f)},u=document.createElement("button");u.style.cssText="flex:1;padding:12px;border-radius:8px;border:none;background:#9CA3AF;color:#fff;font-size:14px;font-weight:600;cursor:pointer;",u.textContent="Decline",u.onclick=()=>p(!1);let d=document.createElement("button");d.style.cssText=`flex:2;padding:12px;border-radius:8px;border:none;background:${t.accent};color:#fff;font-size:14px;font-weight:600;cursor:pointer;`,d.textContent="I Agree & Continue",d.onclick=()=>p(!0),l.appendChild(u),l.appendChild(d),n.appendChild(a),n.appendChild(c),n.appendChild(l),i.appendChild(n),document.body.style.overflow="hidden",document.body.appendChild(i)})}var $=class{constructor(e){this.opts=e,this.client=new le(e.publicKey)}async mount(){var X;let{msisdn:e,container:i,onClose:n,theme:a={}}=this.opts,c=document.querySelector(i);if(!c)return;let l=L(a.accent),p=(X=a.fontFamily)!=null?X:"'DM Sans', system-ui, sans-serif",u=ge(l,p),d=null,f=o=>{let r=`
        <div style="font-family:${p};padding:24px;border:1.5px solid #FCA5A5;background:#FEF2F2;border-radius:8px;color:#991B1B;text-align:center;max-width:440px;margin:40px auto;">
          <div style="font-weight:700;font-size:15px;margin-bottom:4px;">SDK failed to initialize</div>
          <div style="font-size:13px;opacity:0.8;">${o}</div>
        </div>`;d?d.innerHTML=r:c.innerHTML=r};if(!pe(e)){f("Subscriber phone number is not valid.");return}d=c.attachShadow({mode:"open"}),this.renderSpinner(d,u);let b;try{b=await this.client.fetchConfig(e)}catch(o){let r=o instanceof h?o.message:"Could not connect to the activation server.";f(r);return}d.innerHTML="";let{name:be="",subscribedAirtime:T=!1,subscribedData:F=!1,airtimethresholds:xe={},airtimeMin:P=0,airtimeMax:H=1e4,dataThresholds:ve={},dataPlans:we=[],terms:R=null}=b,O=T&&F,ye=(T||F)&&!O;if(!T&&!F&&R&&!await Ne({html:typeof R=="string"?R.replace(/\n/g,"<br>"):"",accent:l,fontFamily:p})){M(n);return}await fe();let ke=Object.entries(xe).map(([o,r])=>`<option value="${r}">Below \u20A6${o}</option>`).join(""),Te=Object.entries(ve).map(([o,r])=>`<option value="${r}">Below ${o}</option>`).join(""),Fe=we.map(o=>`<option value="${o.productId}">${o.allowance} \u2014 \u20A6${o.price}</option>`).join(""),z=document.createElement("div");z.className="rc-modal",z.innerHTML=this.buildModalHtml({tokens:u,msisdn:e,prefilledName:be,airtimeMin:P,airtimeMax:H,airtimeOptions:ke,dataOptions:Te,dataPlanOptions:Fe}),d.appendChild(z);let s=o=>d.getElementById(o),q=s("rc-type-select"),x=s("section-airtime"),S=s("section-data"),B=s("rc-main-title"),I=s("rc-desc"),v=s("rc-submit"),j=s("field-msisdn"),D=s("rc-dependent-link-wrap"),N=s("section-dependent-controls"),V=s("group-type-selector"),_=s("row-beneficiary"),Se=s("row-spending"),Ce=s("field-airtime-max"),Ee=s("field-data-max"),W=!1,U=()=>{let o=O||W,r=q.value;o?(B.innerText="Add Dependent",I.innerText="Configure subscription for someone else",j.classList.remove("hidden"),_.style.gridTemplateColumns="1fr 1fr",V.classList.remove("hidden"),D.classList.add("hidden"),N.classList.remove("hidden"),x.classList.toggle("hidden",r==="data"),S.classList.toggle("hidden",r==="airtime"),Ce.classList.toggle("hidden",r==="data"),Ee.classList.toggle("hidden",r==="airtime"),Se.style.gridTemplateColumns=r==="both"?"1fr 1fr":"1fr"):ye?(B.innerText="Complete Profile",I.innerText="Finish your Auto Topup subscription",j.classList.add("hidden"),_.style.gridTemplateColumns="1fr",V.classList.add("hidden"),D.classList.remove("hidden"),N.classList.add("hidden"),x.classList.toggle("hidden",T),S.classList.toggle("hidden",F)):(B.innerText="Auto Topup Subscription",I.innerText="Automate your airtime & data recharge",j.classList.add("hidden"),_.style.gridTemplateColumns="1fr",V.classList.remove("hidden"),D.classList.add("hidden"),N.classList.add("hidden"),x.classList.toggle("hidden",r==="data"),S.classList.toggle("hidden",r==="airtime"))};U();let G=()=>{d.innerHTML=""};q.addEventListener("change",U),s("rc-close").addEventListener("click",()=>M(n,G)),s("rc-switch-to-dep").addEventListener("click",o=>{o.preventDefault(),W=!0,s("rc-name").value="",U()}),s("rc-name").addEventListener("input",o=>{let r=o.target;r.value=r.value.replace(/[^a-zA-Z\s]/g,"")}),["rc-msisdn-input","airtimeTopupValue","rc-airtime-max","rc-data-max"].forEach(o=>{var r;(r=s(o))==null||r.addEventListener("input",C=>{let w=C.target;w.value=w.value.replace(/\D/g,"")})}),d.querySelectorAll(".rc-field input, .rc-field select").forEach(o=>{let r=()=>o.closest(".rc-field").classList.toggle("has-val",o.value!=="");o.addEventListener("input",r),o.addEventListener("change",r),r()}),v.addEventListener("click",async()=>{var Z,Q;let o=K=>{var ee,te;return(te=(ee=s(K))==null?void 0:ee.value.trim())!=null?te:""},r=O||W,C=r?o("rc-msisdn-input"):e;if(!x.classList.contains("hidden")&&!me(o("airtimeTopupValue"),P,H)){k({icon:"warning",title:"Invalid Amount",text:`Enter \u20A6${P} \u2013 \u20A6${H}.`,confirmButtonColor:l});return}if(r&&!C){k({icon:"warning",title:"Wait!",text:"Enter the dependent phone number.",confirmButtonColor:l});return}v.disabled=!0,v.innerText="Processing\u2026";let w={network:"MTN",msisdn:C,name:o("rc-name")};try{x.classList.contains("hidden")||await this.client.subscribeAirtime(m(g(m({},w),{airtimeThresholdId:o("airtimeThresholdId"),airtimeTopupValue:o("airtimeTopupValue")}),r&&{customerMsisdn:e,monthlyMaximum:o("rc-airtime-max")})),S.classList.contains("hidden")||await this.client.subscribeData(m(g(m({},w),{dataThresholdId:o("dataThresholdId"),dataTopupValue:o("dataTopupValue")}),r&&{customerMsisdn:e,monthlyMaximum:o("rc-data-max")})),Y("successful"),(Q=(Z=this.opts).onSuccess)==null||Q.call(Z,{success:!0}),k({icon:"success",title:"Subscription Active!",text:"Your auto top-up is now enabled.",confirmButtonColor:l,didClose:()=>M(n,G,!0)})}catch(K){Y("failed"),k({icon:"error",title:"Oops!",text:K.message,confirmButtonColor:l}),v.disabled=!1,v.innerText="Activate Subscription"}})}renderSpinner(e,i){var a,c;let n=document.createElement("div");n.innerHTML=`
      <style>
        :host { display:flex; align-items:center; justify-content:center; min-height:100vh; background:#fff; -webkit-overflow-scrolling: touch; }
        @media (min-width:560px) { :host { background:rgba(0,0,0,.50); } }
        ${(c=(a=J(i).match(/\.rc-spinner-ring[\s\S]*?@keyframes rc-spin[\s\S]*?}/))==null?void 0:a[0])!=null?c:""}
      </style>
      <div class="rc-spinner-ring"></div>`,e.appendChild(n)}buildModalHtml(e){return`
      <style>${J(e.tokens)}</style>

      <div class="rc-header">
        <div class="rc-header-top">
          <div class="rc-title">
            <h2 id="rc-main-title">Auto Topup Subscription</h2>
            <p id="rc-desc">Automate your airtime &amp; data recharge</p>
          </div>
          <button class="rc-close-btn" id="rc-close" aria-label="Close">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
              <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
            </svg>
          </button>
        </div>
        <div class="rc-account-bar">
          <div class="rc-dot"></div>
          <div>
            <span class="rc-acc-label">Your Phone Number</span>
            <span class="rc-acc-no">${ue(e.msisdn)}</span>
          </div>
        </div>
      </div>

      <div class="rc-content">
        <div class="rc-group">
          <p class="rc-group-title">Registration Details</p>
          <div class="rc-row" id="row-beneficiary">
            <div class="rc-field" id="field-name">
              <input type="text" id="rc-name" placeholder=" " value="${e.prefilledName}" autocomplete="name">
              <label>Full Name</label>
            </div>
            <div class="rc-field hidden" id="field-msisdn">
              <input type="tel" id="rc-msisdn-input" placeholder=" " autocomplete="tel">
              <label>Phone Number</label>
            </div>
          </div>
        </div>

        <div class="rc-group" id="group-type-selector">
          <p class="rc-group-title">Subscription Type</p>
          <div class="rc-field has-val">
            <select id="rc-type-select">
              <option value="airtime">Airtime Only</option>
              <option value="data">Data Only</option>
              <option value="both">Both Airtime &amp; Data</option>
            </select>
            <label>Automation Mode</label>
          </div>
        </div>

        <hr class="rc-divider">

        <div id="section-airtime" class="section-animate">
          <p class="rc-group-title">Airtime Setup</p>
          <div class="rc-row" style="grid-template-columns:1fr 1fr">
            <div class="rc-field has-val">
              <select id="airtimeThresholdId">${e.airtimeOptions||'<option value="">Loading\u2026</option>'}</select>
              <label>Recharge when</label>
            </div>
            <div class="rc-field">
              <input type="tel" id="airtimeTopupValue" placeholder=" ">
              <label>Amount (\u20A6)</label>
              <small>\u20A6${e.airtimeMin} \u2013 \u20A6${e.airtimeMax}</small>
            </div>
          </div>
        </div>

        <div id="section-data" class="hidden section-animate">
          <p class="rc-group-title">Data Setup</p>
          <div class="rc-row" style="grid-template-columns:1fr 1fr">
            <div class="rc-field has-val">
              <select id="dataThresholdId">${e.dataOptions||'<option value="">Loading\u2026</option>'}</select>
              <label>Recharge when</label>
            </div>
            <div class="rc-field has-val">
              <select id="dataTopupValue">${e.dataPlanOptions||'<option value="">Loading\u2026</option>'}</select>
              <label>Select Plan</label>
            </div>
          </div>
        </div>

        <div id="section-dependent-controls" class="hidden">
          <hr class="rc-divider">
          <p class="rc-group-title">Spending Controls</p>
          <div class="rc-row" id="row-spending">
            <div class="rc-field" id="field-airtime-max">
              <input type="tel" id="rc-airtime-max" placeholder=" ">
              <label>Airtime Limit (\u20A6)</label>
            </div>
            <div class="rc-field" id="field-data-max">
              <input type="tel" id="rc-data-max" placeholder=" ">
              <label>Data Limit (\u20A6)</label>
            </div>
          </div>
        </div>

        <button class="rc-submit-btn" id="rc-submit">Activate Subscription</button>

        <div id="rc-dependent-link-wrap" class="rc-link-wrap hidden">
          Or <a id="rc-switch-to-dep">add a dependent instead</a>
        </div>
      </div>

      <div class="rc-footer">
        <svg width="11" height="11" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
          <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
          <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
        </svg>
        Secured by <strong>&nbsp;Retailcode</strong>
      </div>
    `}};var he={create(t){var i;let e=new $(g(m({},t),{theme:g(m({},t.theme),{accent:L((i=t.theme)==null?void 0:i.accent)})}));return{mount:()=>e.mount()}}};return Oe(Ve);})();
''';
