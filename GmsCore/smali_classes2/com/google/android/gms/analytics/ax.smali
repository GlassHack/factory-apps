.class public Lcom/google/android/gms/analytics/ax;
.super Lcom/google/android/gms/analytics/az;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/android/gms/analytics/az;-><init>()V

    .line 377
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->Y:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 378
    const-string v0, "&t"

    const-string v1, "event"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 379
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/analytics/ax;
    .locals 3

    .prologue
    .line 410
    const-string v0, "&ev"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 411
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ax;
    .locals 1

    .prologue
    .line 395
    const-string v0, "&ec"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 396
    return-object p0
.end method

.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/google/android/gms/analytics/az;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ax;
    .locals 1

    .prologue
    .line 405
    const-string v0, "&el"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 406
    return-object p0
.end method
