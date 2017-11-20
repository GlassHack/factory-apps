.class public Lcom/google/android/gms/analytics/ba;
.super Lcom/google/android/gms/analytics/az;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/android/gms/analytics/az;-><init>()V

    .line 450
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->J:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 451
    const-string v0, "&t"

    const-string v1, "timing"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 452
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/analytics/ba;
    .locals 3

    .prologue
    .line 478
    const-string v0, "&utt"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 479
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;
    .locals 1

    .prologue
    .line 470
    const-string v0, "&utv"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 471
    return-object p0
.end method

.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/google/android/gms/analytics/az;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;
    .locals 1

    .prologue
    .line 483
    const-string v0, "&utc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 484
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;
    .locals 1

    .prologue
    .line 488
    const-string v0, "&utl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 489
    return-object p0
.end method
