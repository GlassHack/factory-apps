.class public final Lcom/google/android/gms/analytics/ay;
.super Lcom/google/android/gms/analytics/az;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/gms/analytics/az;-><init>()V

    .line 500
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->H:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 501
    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 502
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/google/android/gms/analytics/az;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
