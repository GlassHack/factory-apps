.class public final Lcom/google/android/location/p/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field private d:D


# direct methods
.method public constructor <init>([D)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/google/android/location/p/i;->d:D

    .line 31
    array-length v0, p1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Z)V

    .line 32
    aget-wide v2, p1, v2

    iput-wide v2, p0, Lcom/google/android/location/p/i;->a:D

    .line 33
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/google/android/location/p/i;->b:D

    .line 34
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/location/p/i;->c:D

    .line 35
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public final a()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 53
    iget-wide v0, p0, Lcom/google/android/location/p/i;->d:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/google/android/location/p/i;->a:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/p/i;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/location/p/i;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/p/i;->d:D

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/p/i;->d:D

    return-wide v0
.end method
