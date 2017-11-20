.class final Lcom/google/android/gms/fitness/c/c;
.super Lcom/google/android/gms/analytics/ba;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/fitness/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;
    .locals 0

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/fitness/c/c;
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/c/c;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 265
    return-object p0
.end method

.method public final a(JJ)Lcom/google/android/gms/fitness/c/c;
    .locals 5

    .prologue
    .line 258
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 259
    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/fitness/c/c;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 260
    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;
    .locals 0

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/ba;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/fitness/c/c;
    .locals 3

    .prologue
    .line 248
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/c/c;->a(J)Lcom/google/android/gms/analytics/ba;

    .line 249
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/fitness/c/c;
    .locals 0

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/ba;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    .line 244
    return-object p0
.end method
