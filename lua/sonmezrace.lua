-- Sonmez Game World | Makas - Drift - Yaris HUD v2 (CSP online script)
-- AssettoServer 0.0.55 (preview 44) uyumlu
--
-- LOGO AYARI: logoyu gostermek icin asagidaki satiri true yap.
local SHOW_LOGO = false

local LOGO_B64 = [==[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]==]

-- ---------------------------------------------------------------- base64 -> binary
local function b64decode(data)
  local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  local map = {}
  for i = 1, #b do map[b:byte(i)] = i - 1 end
  local out, n, bits, acc = {}, 0, 0, 0
  local chunk = {}
  for i = 1, #data do
    local v = map[data:byte(i)]
    if v then
      acc = acc * 64 + v
      bits = bits + 6
      if bits >= 8 then
        bits = bits - 8
        local div = 2 ^ bits
        local byte = math.floor(acc / div)
        acc = acc - byte * div
        n = n + 1
        chunk[n] = string.char(byte)
        if n >= 4096 then out[#out + 1] = table.concat(chunk); chunk = {}; n = 0 end
      end
    end
  end
  out[#out + 1] = table.concat(chunk)
  return table.concat(out)
end

local logo = nil
pcall(function() logo = ui.decodeImage(b64decode(LOGO_B64)) end)
if not logo then ac.log('SonmezRace: logo yuklenemedi') end

-- hata olursa oyunu/HUD'u cokertmeden CSP loguna yaz (Documents/Assetto Corsa/logs/custom_shaders_patch.log)
local lastErr = ''
local function logErr(e)
  e = tostring(e)
  if e ~= lastErr then lastErr = e; ac.log('SonmezRace HATA: ' .. e) end
end

-- ---------------------------------------------------------------- state
local hud = {
  session = 0, total = 0, combo = 0, kind = 0, pts = 0,
  rstate = 0, count = 0, rank = 0, rcount = 0, dist = 0, len = 1000, winner = '', wtime = 0,
  gap_fwd = 0, gap_bwd = 0,
  recv = 0
}

local hudEvent = ac.OnlineEvent({
  ac.StructItem.key('sonmezHud'),
  f01_session = ac.StructItem.int32(),
  f02_total = ac.StructItem.int32(),
  f03_combo = ac.StructItem.byte(),
  f04_kind = ac.StructItem.byte(),
  f05_pts = ac.StructItem.int32(),
  f06_rstate = ac.StructItem.byte(),
  f07_count = ac.StructItem.byte(),
  f08_rank = ac.StructItem.byte(),
  f09_rcount = ac.StructItem.byte(),
  f10_dist = ac.StructItem.float(),
  f11_len = ac.StructItem.float(),
  f12_winner = ac.StructItem.string(24),
  f13_wtime = ac.StructItem.float(),
  f14_gap_fwd = ac.StructItem.float(),
  f15_gap_bwd = ac.StructItem.float(),
}, function(sender, d)
  hud.session = d.f01_session; hud.total = d.f02_total
  hud.combo = d.f03_combo; hud.kind = d.f04_kind; hud.pts = d.f05_pts
  hud.rstate = d.f06_rstate; hud.count = d.f07_count
  hud.rank = d.f08_rank; hud.rcount = d.f09_rcount
  hud.dist = d.f10_dist; hud.len = d.f11_len
  hud.winner = d.f12_winner; hud.wtime = d.f13_wtime
  hud.gap_fwd = d.f14_gap_fwd; hud.gap_bwd = d.f15_gap_bwd
  hud.recv = os.clock()
end)

local hornEvent = ac.OnlineEvent({
  ac.StructItem.key('sonmezHorn'),
  f01_seq = ac.StructItem.byte(),
}, function() end)

-- ---------------------------------------------------------------- ses efektleri (WAV sentez + CSP audio)
local function makeWav(freq, dur, vol)
  local rate = 22050
  local n = math.floor(rate * dur)
  local function u32(v)
    return string.char(v % 256, math.floor(v / 256) % 256, math.floor(v / 65536) % 256, math.floor(v / 16777216) % 256)
  end
  local function u16(v) return string.char(v % 256, math.floor(v / 256) % 256) end
  local size = n * 2
  local hdr = 'RIFF' .. u32(36 + size) .. 'WAVEfmt ' .. u32(16) .. u16(1) .. u16(1)
           .. u32(rate) .. u32(rate * 2) .. u16(2) .. u16(16) .. 'data' .. u32(size)
  local parts = {}
  for i = 1, n do
    local t = (i - 1) / rate
    local env = math.min(1, t / 0.004, math.max(0, dur - t) / 0.03)
    local v = math.floor(math.sin(6.283185307 * freq * t) * env * vol * 32767)
    if v < 0 then v = v + 65536 end
    parts[i] = u16(v)
  end
  return hdr .. table.concat(parts)
end

local SND_BEEP = makeWav(880, 0.10, 0.55)     -- geri sayim bip'i
local SND_GO   = makeWav(1318.5, 0.40, 0.60)  -- yaris basladi

local audioReady, srcBeep, srcGo = nil, nil, nil

local function ensureAudio()
  if audioReady ~= nil then return audioReady end
  local ok = pcall(function()
    srcBeep = audio.newSource(SND_BEEP, 'static')
    srcGo = audio.newSource(SND_GO, 'static')
    if srcBeep == nil or srcGo == nil then error('audio.newSource nil') end
  end)
  if not ok then
    ok = pcall(function()
      srcBeep = audio.newSource(SND_BEEP)
      srcGo = audio.newSource(SND_GO)
      if srcBeep == nil or srcGo == nil then error('audio.newSource nil') end
    end)
  end
  audioReady = ok or false
  if not audioReady then ac.log('SonmezRace: ses API bulunamadi, sessiz mod (CSP 0.2.x+ gerekli)') end
  return audioReady
end

local function playSound(src)
  if audioReady ~= true or src == nil then return end
  local ok = pcall(function() src:stop(); src:play() end)
  if not ok then pcall(function() audio.play(src) end) end
end

-- ---------------------------------------------------------------- korna algilama
local hornSeq, hornWas = 0, false
local prevRstate, prevCount = 0, 0

local function hornDown()
  local car = ac.getCar(0)
  if not car then return false end
  local ok, v = pcall(function() return car.hornActive end)
  if ok and v == true then return true end
  ok, v = pcall(function() return car.horn end)
  if ok and v == true then return true end
  ok, v = pcall(function() return ac.isKeyDown(ac.KeyIndex.H) end)   -- varsayilan korna tusu
  if ok and v then return true end
  return false
end

function script.update(dt)
  local okU, errU = pcall(function()
  local down = hornDown()
  if down and not hornWas then
    hornSeq = (hornSeq + 1) % 256
    hornEvent({ f01_seq = hornSeq })
  end
  hornWas = down

  -- sesler: geri sayim bip'i ve yaris baslangici
  if hud.rstate == 1 then
    if hud.count > 0 and hud.count ~= prevCount then
      if ensureAudio() then playSound(srcBeep) end
    end
  elseif hud.rstate == 2 and prevRstate == 1 then
    if ensureAudio() then playSound(srcGo) end
  end
  prevRstate, prevCount = hud.rstate, hud.count
  end)
  if not okU then logErr(errU) end
end

-- ---------------------------------------------------------------- stil
local ACCENT   = rgbm(0.95, 0.16, 0.20, 1)
local ACCENT_D = rgbm(0.75, 0.08, 0.12, 1)
local GLASS    = rgbm(0.045, 0.045, 0.065, 0.86)
local PANEL    = rgbm(1, 1, 1, 0.045)
local LINE     = rgbm(1, 1, 1, 0.07)
local WHITE    = rgbm(1, 1, 1, 1)
local SOFT     = rgbm(0.92, 0.92, 0.95, 1)
local GREY     = rgbm(0.62, 0.63, 0.68, 1)

local W = 350
local HEADER_H = 54
local BODY_H = 96
local RACE_H = 112

local function text(str, size, pos, col)
  ui.dwriteDrawText(str, size, pos, col or WHITE)
end

local function textRight(str, size, rightX, y, col)
  local w = ui.measureDWriteText(str, size).x
  ui.dwriteDrawText(str, size, vec2(rightX - w, y), col or WHITE)
end

local function textCenter(str, size, cx, y, col)
  local w = ui.measureDWriteText(str, size).x
  ui.dwriteDrawText(str, size, vec2(cx - w / 2, y), col or WHITE)
end

local function fmt(n)
  local s = tostring(math.floor(n))
  local out = s:reverse():gsub('(%d%d%d)', '%1.'):reverse()
  return (out:gsub('^%.', ''))
end

local function rrect(p1, p2, col, r)
  ui.drawRectFilled(p1, p2, col, r)
end

-- ---------------------------------------------------------------- ana panel (sag kosye)
function script.drawUI()
  local uiState = ac.getUI()
  local sw, sh = uiState.windowSize.x, uiState.windowSize.y

  local H = HEADER_H + BODY_H + (hud.rstate ~= 0 and RACE_H or 0)

  -- otomatik sag kosye: her cozunurlukte sag kenardan 20 px
  ui.transparentWindow('sonmezHud', vec2(sw - W - 20, 80), vec2(W, H), function()
    local o = ui.windowPos()
    ui.pushDWriteFont('Segoe UI;Weight=Bold')
    local okP, errP = pcall(function()

    -- cam panel
    rrect(o, o + vec2(W, H), GLASS, 12)
    ui.drawRect(o, o + vec2(W, H), LINE, 12)

    -- filigran logo
    if SHOW_LOGO and logo then
      ui.drawImage(logo, o + vec2(W / 2 - 52, HEADER_H + 8), o + vec2(W / 2 + 52, HEADER_H + 112), rgbm(1, 1, 1, 0.10))
    end

    -- baslik
    local tx = 16
    if SHOW_LOGO and logo then
      ui.drawImage(logo, o + vec2(14, 10), o + vec2(48, 44), WHITE)
      tx = 58
    end
    text('SÖNMEZ GAME WORLD', 15, o + vec2(tx, 12), WHITE)
    text('MAKAS • DRİFT • YARIŞ', 9, o + vec2(tx, 31), GREY)

    -- baslik alti kirmizi vurgu
    ui.drawRectFilled(o + vec2(14, HEADER_H - 4), o + vec2(70, HEADER_H - 2), ACCENT)
    ui.drawRectFilled(o + vec2(70, HEADER_H - 4), o + vec2(120, HEADER_H - 2), rgbm(0.95, 0.16, 0.20, 0.4))
    ui.drawRectFilled(o + vec2(120, HEADER_H - 4), o + vec2(170, HEADER_H - 2), rgbm(0.95, 0.16, 0.20, 0.15))

    -- puanlar
    local py = HEADER_H + 12
    text('OTURUM PUANI', 10, o + vec2(16, py), GREY)
    text(fmt(hud.session), 32, o + vec2(16, py + 14), WHITE)

    textRight('TOPLAM PUAN', 10, W - 16, py, GREY)
    textRight(fmt(hud.total), 22, W - 16, py + 24, SOFT)

    -- canli puan + kombo
    local ey = HEADER_H + 66
    if hud.kind == 1 then
      ui.drawCircleFilled(o + vec2(22, ey + 10), 4, ACCENT, 12)
      text('DRİFT  +' .. fmt(hud.pts), 16, o + vec2(34, ey), SOFT)
    elseif hud.kind == 2 then
      ui.drawCircleFilled(o + vec2(22, ey + 10), 4, ACCENT, 12)
      text('MAKAS  +' .. fmt(hud.pts), 16, o + vec2(34, ey), SOFT)
    end
    if hud.combo >= 2 then
      rrect(o + vec2(W - 58, ey - 2), o + vec2(W - 16, ey + 22), ACCENT_D, 6)
      textRight('x' .. fmt(hud.combo), 13, W - 26, ey + 2, WHITE)
    end

    -- yaris bolumu
    if hud.rstate ~= 0 then
      local y = HEADER_H + BODY_H
      ui.drawRectFilled(o + vec2(0, y), o + vec2(W, y + 1), LINE)
      local ry = y + 10

      rrect(o + vec2(12, ry), o + vec2(W - 12, ry + 100), PANEL, 8)

      if hud.rstate == 1 then
        -- geri sayim ekranin TAM ORTASINDA; panelde sadece bilgi
        textCenter('YARIŞ BAŞLIYOR', 12, W / 2, ry + 12, GREY)
        textCenter(string.format('%.1f km', hud.len / 1000), 22, W / 2, ry + 30, SOFT)
        textCenter(string.format('%d yarışçı', hud.rcount), 11, W / 2, ry + 58, GREY)
      elseif hud.rstate == 2 then
        text('YARIŞ', 11, o + vec2(22, ry + 10), GREY)
        textRight(fmt(hud.rank) .. ' / ' .. fmt(hud.rcount), 20, W - 22, ry + 6, WHITE)

        local frac = math.saturate(hud.dist / math.max(1, hud.len))
        local bx, by, bw, bh = 22, ry + 34, W - 44, 10
        rrect(o + vec2(bx, by), o + vec2(bx + bw, by + bh), rgbm(1, 1, 1, 0.10), 5)
        if frac > 0.01 then
          rrect(o + vec2(bx, by), o + vec2(bx + bw * frac, by + bh), ACCENT, 5)
        end

        text(string.format('%.2f / %.2f km', hud.dist / 1000, hud.len / 1000), 11, o + vec2(22, ry + 52), GREY)
        local c0 = ac.getCar(0)
        local spd = (c0 and c0.speedKmh) and math.floor(c0.speedKmh) or 0
        textRight(spd .. ' km/s', 11, W - 22, ry + 52, GREY)

        -- rakip farki
        if hud.gap_fwd > 0 then
          text('ÖNDEKİ  ' .. fmt(hud.gap_fwd) .. ' m', 10, o + vec2(22, ry + 74), SOFT)
        end
        if hud.gap_bwd > 0 then
          textRight('ARKADAKI  ' .. fmt(hud.gap_bwd) .. ' m', 10, W - 22, ry + 74, SOFT)
        end
      elseif hud.rstate == 3 then
        text('BİRİNCİ', 10, o + vec2(22, ry + 10), ACCENT)
        text(hud.winner ~= '' and hud.winner or '-', 22, o + vec2(22, ry + 24), WHITE)
        text(string.format('Süre: %.1f sn', hud.wtime), 11, o + vec2(22, ry + 60), GREY)
      end
    end

    -- baglanti noktasi
    local alive = (os.clock() - hud.recv) < 6
    ui.drawCircleFilled(o + vec2(W - 14, H - 12), 4, alive and rgbm(0.2, 0.9, 0.25, 1) or rgbm(0.5, 0.5, 0.5, 1), 12)

    end)
    ui.popDWriteFont()
    if not okP then logErr(errP) end
  end)

  -- ---------------------------------------------------------------- geri sayim (EKRANIN TAM ORTASI)
  if hud.rstate == 1 then
    ui.transparentWindow('sonmezCountdown', vec2(sw / 2 - 140, sh / 2 - 140), vec2(280, 280), function()
      local o = ui.windowPos()
      local c = o + vec2(140, 140)
      local okC, errC = pcall(function()

      -- her saniyede bir pop animasyonu
      local frac = os.clock() % 1
      local pop = 1 + 0.16 * math.max(0, (0.35 - frac) / 0.35) ^ 2
      local num = fmt(math.max(1, hud.count))
      local size = 120 * pop

      -- isima halkalari
      ui.drawCircleFilled(c, 118, rgbm(0.95, 0.16, 0.20, 0.06), 48)
      ui.drawCircleFilled(c, 100, rgbm(0.95, 0.16, 0.20, 0.10), 48)
      ui.drawCircleFilled(c, 84, rgbm(0.03, 0.03, 0.05, 0.72), 48)
      ui.drawCircle(c, 84, rgbm(0.95, 0.16, 0.20, 0.55), 48, 2.5)

      ui.pushDWriteFont('Segoe UI;Weight=Black')
      local m = ui.measureDWriteText(num, size)
      ui.dwriteDrawText(num, size, c - vec2(m.x / 2, m.y / 2), WHITE)
      ui.popDWriteFont()

      ui.pushDWriteFont('Segoe UI;Weight=Bold')
      textCenter('YARIŞ BAŞLIYOR', 13, c.x, o.y + 24, SOFT)
      textCenter(string.format('%d YARIŞÇI', hud.rcount), 11, c.x, o.y + 236, GREY)
      ui.popDWriteFont()
      end)
      if not okC then logErr(errC); pcall(ui.popDWriteFont) end
    end)
  end
end
