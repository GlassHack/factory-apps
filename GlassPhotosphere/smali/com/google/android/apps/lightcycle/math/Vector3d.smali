.class public Lcom/google/android/apps/lightcycle/math/Vector3d;
.super Ljava/lang/Object;
.source "Vector3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 33
    return-void
.end method

.method public static cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 11
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v2, v4

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v5, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v7, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v7, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v9, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 154
    return-void
.end method

.method public static dot(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)D
    .locals 6
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static sub(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 9
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v5, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v7, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    sub-double/2addr v5, v7

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 142
    return-void
.end method


# virtual methods
.method public length()D
    .locals 6

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->length()D

    move-result-wide v0

    .line 99
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 100
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 102
    :cond_0
    return-void
.end method

.method public sameValues(Lcom/google/android/apps/lightcycle/math/Vector3d;)Z
    .locals 4
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scale(D)V
    .locals 2
    .param p1, "s"    # D

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 90
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 91
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 92
    return-void
.end method

.method public set(DDD)V
    .locals 0
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 44
    iput-wide p3, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 45
    iput-wide p5, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 46
    return-void
.end method

.method public set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 78
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 79
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 80
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 81
    return-void
.end method

.method public setComponent(ID)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "val"    # D

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    iput-wide p2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 59
    iput-wide p2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    goto :goto_0

    .line 61
    :cond_1
    iput-wide p2, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    goto :goto_0
.end method

.method public setZero()V
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 70
    return-void
.end method
