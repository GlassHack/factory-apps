.class public final Lcom/google/android/gms/panorama/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Lcom/google/android/gms/panorama/b/d;Lcom/google/android/gms/panorama/b/d;)D
    .locals 6

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    iget-wide v2, p1, Lcom/google/android/gms/panorama/b/d;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    iget-wide v4, p1, Lcom/google/android/gms/panorama/b/d;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    iget-wide v4, p1, Lcom/google/android/gms/panorama/b/d;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/google/android/gms/panorama/b/d;Lcom/google/android/gms/panorama/b/d;Lcom/google/android/gms/panorama/b/d;)V
    .locals 10

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    iget-wide v2, p1, Lcom/google/android/gms/panorama/b/d;->c:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    iget-wide v4, p1, Lcom/google/android/gms/panorama/b/d;->b:D

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    iget-wide v4, p1, Lcom/google/android/gms/panorama/b/d;->a:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    iget-wide v6, p1, Lcom/google/android/gms/panorama/b/d;->c:D

    mul-double/2addr v4, v6

    sub-double v4, v0, v4

    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    iget-wide v6, p1, Lcom/google/android/gms/panorama/b/d;->b:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    iget-wide v8, p1, Lcom/google/android/gms/panorama/b/d;->a:D

    mul-double/2addr v6, v8

    sub-double v6, v0, v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/panorama/b/d;->a(DDD)V

    .line 154
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    .line 70
    return-void
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    .line 90
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    .line 91
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    .line 92
    return-void
.end method

.method public final a(DDD)V
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    .line 44
    iput-wide p3, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    .line 45
    iput-wide p5, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    .line 46
    return-void
.end method

.method public final a(Lcom/google/android/gms/panorama/b/d;)V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p1, Lcom/google/android/gms/panorama/b/d;->a:D

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    .line 79
    iget-wide v0, p1, Lcom/google/android/gms/panorama/b/d;->b:D

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    .line 80
    iget-wide v0, p1, Lcom/google/android/gms/panorama/b/d;->c:D

    iput-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    .line 81
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/b/d;->c()D

    move-result-wide v0

    .line 99
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 100
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/panorama/b/d;->a(D)V

    .line 102
    :cond_0
    return-void
.end method

.method public final c()D
    .locals 6

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    iget-wide v4, p0, Lcom/google/android/gms/panorama/b/d;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    iget-wide v4, p0, Lcom/google/android/gms/panorama/b/d;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
