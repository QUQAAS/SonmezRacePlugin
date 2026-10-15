namespace SonmezRacePlugin;

public class SonmezRaceConfiguration
{
    // ---- MAKAS ----
    public float MakasMinSpeedKmh { get; set; } = 80f;       // gecen aracin min hizi
    public float MakasMinOtherSpeedKmh { get; set; } = 20f;  // gecilen aracin min hizi
    public float MakasMaxLateralMeters { get; set; } = 3.2f; // yan mesafe (merkezler arasi)
    public int MakasBasePoints { get; set; } = 20;
    public float MakasCooldownSeconds { get; set; } = 3f;    // ayni cift icin

    // ---- DRIFT ----
    public float DriftMinSpeedKmh { get; set; } = 40f;
    public float DriftMinAngleDeg { get; set; } = 15f;
    public float DriftMaxAngleDeg { get; set; } = 110f;
    public float DriftMinSeconds { get; set; } = 1.0f;       // puan icin min drift suresi
    public float DriftPointsPerSecond { get; set; } = 30f;
    // 0 = otomatik algila, 1..8 = elle sabitle (drift acisi yanlis cikarsa dene)
    public int YawMode { get; set; } = 0;

    // ---- KAZA / KOMBO ----
    public float CrashSpeedDropKmh { get; set; } = 28f;      // 0.1 sn icinde bu kadar hiz kaybi = kaza
    public float ComboWindowSeconds { get; set; } = 5f;
    public int MaxCombo { get; set; } = 3;

    // ---- YARIS ----
    // 2 korna -> kisa yaris, 3 korna -> uzun yaris
    public int HornCountShort { get; set; } = 2;
    public float RaceLengthShortMeters { get; set; } = 1000f;
    public int HornCountLong { get; set; } = 3;
    public float RaceLengthLongMeters { get; set; } = 2000f;
    // 2. kornadan sonra 3. kornayi beklemek icin gecen sure (bu surede 3. korna gelmezse kisa yaris baslar)
    public float HornDecisionSeconds { get; set; } = 1.0f;
    public float HornWindowSeconds { get; set; } = 3f;
    public float RaceRadiusMeters { get; set; } = 200f;      // yakin oyuncu yaricapi
    public int RaceCountdownSeconds { get; set; } = 3;       // ekranin TAM ORTASINDA 3-2-1
    public int RaceWinnerBonus { get; set; } = 500;
    public float RaceTimeoutSeconds { get; set; } = 240f;
    public float RaceCooldownSeconds { get; set; } = 15f;
    public float ResultShowSeconds { get; set; } = 8f;
}
