const wrap = document.getElementById('wrap');
const msg = document.getElementById('msg');
const ticker = document.getElementById('tickerText');
const timerEl = document.getElementById('timer');
const beep = document.getElementById('beep');

let endAt = 0;
let tickInterval = null;

function show(message, seconds, sound) {
  msg.textContent = message;
  ticker.textContent = `GOVERNMENT ALERT • ${message} • GOVERNMENT ALERT • ${message} • `;
  wrap.classList.remove('hidden');

  endAt = Date.now() + (seconds * 1000);

  if (sound) {
    try { beep.currentTime = 0; beep.volume = 0.5; beep.play(); } catch (e) {}
  }

  if (tickInterval) clearInterval(tickInterval);
  tickInterval = setInterval(() => {
    const left = Math.max(0, endAt - Date.now());
    const s = Math.ceil(left / 1000);
    timerEl.textContent = s > 0 ? `${s}s` : '';
    if (left <= 0) clearInterval(tickInterval);
  }, 200);
}

function hide() {
  wrap.classList.add('hidden');
  timerEl.textContent = '';
  if (tickInterval) clearInterval(tickInterval);
  tickInterval = null;
}

window.addEventListener('message', (event) => {
  const data = event.data;
  if (!data || !data.action) return;

  if (data.action === 'show') show(data.message, data.seconds || 15, data.sound !== false);
  if (data.action === 'hide') hide();
});
