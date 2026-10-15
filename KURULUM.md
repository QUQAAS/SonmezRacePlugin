# SonmezRacePlugin - Kurulum (AssettoServer 0.0.55 preview 44, net11.0)

## GitHub'da derleme
1. Yeni bir GitHub deposu ac, bu klasorun icindekileri deponun kokune yukle
   (`SonmezRacePlugin.csproj` ve `.github/workflows/build.yml` kokte olmali).
2. Repo > **Actions** sekmesi > "Build SonmezRacePlugin" kendiliginden calisir
   (veya **Run workflow**).
3. Bitince calismanin altindaki **Artifacts** > `SonmezRacePlugin-0.0.55-pre44` indir.
   Hata olursa `build-log` artifact'i ve Actions logu hatayi gosterir.
4. Surum etiketi atarsan (ornek: `git tag v1.0 && git push --tags`) zip otomatik **Releases**'e eklenir.

## Sunucuya kurulum
1. Zip'i ac. `plugins/SonmezRacePlugin/SonmezRacePlugin.dll` dosyasini sunucudaki
   `plugins/SonmezRacePlugin/` klasorune kopyala.
2. `cfg/extra_cfg.yml` icine ekle:
   ```
   EnablePlugins:
   - SonmezRacePlugin
   EnableClientMessages: true
   ```
3. (Opsiyonel) `cfg/plugin_sonmez_race_cfg.yml` ayarlari degistirmek icin.
4. CSP gerekli (online scriptler icin).

## Oyun icinde
- **2 korna** = 1000 m yaris, **3 korna** = 2000 m yaris (ayni oyuncudan, 3 sn penceresinde).
- Geri sayim (3-2-1) ekranin TAM ORTASINDA, sadece yaris baslarken gorunur.
- Yaris sirasinda ondeki/arkadaki rakibe kalan mesafe panelde gosterilir (ONDEKI / ARKADAKI).
- Geri sayimda bip, yarisma baslarken uzun bip sesi calar (CSP 0.2.x+ gerekir; ses gelmezse CSP'yi guncelle).
- HUD otomatik olarak ekranin sag kosesine yerlesir.
- Logosuz tasarim icin `lua/sonmezrace.lua` dosyasinin basindaki `SHOW_LOGO = false` satirini `true` yap
  (depo kokundeki `lua/sonmezrace.lua` derlemeye dahildir, degisiklikten sonra yeniden derle).

## Sorun giderme
- Drift acisi ters/yanlis cikarsa config'de `YawMode: 1..8` dene.
- Korna algilanmazsa Actions'ta **Run workflow** > `with_commands` isaretle, oyunda `/yaris` yaz.
- Farkli bir AssettoServer surumu icin Run workflow > `server_ref` alanina etiketi yaz.
