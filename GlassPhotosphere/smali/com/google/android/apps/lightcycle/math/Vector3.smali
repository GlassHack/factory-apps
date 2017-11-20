.class public final Lcom/google/android/apps/lightcycle/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# static fields
.field public static final ZERO:Lcom/google/android/apps/lightcycle/math/Vector3;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/google/android/apps/lightcycle/math/Vector3;->ZERO:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/math/Vector3;)V
    .locals 0
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(Lcom/google/android/apps/lightcycle/math/Vector3;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final add(FFF)V
    .locals 1
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F
    .param p3, "otherZ"    # F

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 50
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 51
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 52
    return-void
.end method

.method public final add(Lcom/google/android/apps/lightcycle/math/Vector3;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 44
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 45
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 46
    return-void
.end method

.method public crossProduct(Lcom/google/android/apps/lightcycle/math/Vector3;)Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 4
    .param p1, "v"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    .line 137
    .local v0, "r":Lcom/google/android/apps/lightcycle/math/Vector3;
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 138
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 139
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 140
    return-object v0
.end method

.method public final distance2(Lcom/google/android/apps/lightcycle/math/Vector3;)F
    .locals 5
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 105
    iget v3, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 106
    .local v0, "dx":F
    iget v3, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 107
    .local v1, "dy":F
    iget v3, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v4, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 108
    .local v2, "dz":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public final divide(F)V
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 73
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 75
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 76
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 78
    :cond_0
    return-void
.end method

.method public final dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F
    .locals 3
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final length()F
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/math/Vector3;->length2()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final length2()F
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final multiply(F)V
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 62
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 63
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 64
    return-void
.end method

.method public final multiply(Lcom/google/android/apps/lightcycle/math/Vector3;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 68
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 69
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 70
    return-void
.end method

.method public final normalize()F
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/math/Vector3;->length()F

    move-result v0

    .line 114
    .local v0, "magnitude":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 115
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 116
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 117
    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 120
    :cond_0
    return v0
.end method

.method public final set(FFF)V
    .locals 0
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 88
    iput p2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 89
    iput p3, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 90
    return-void
.end method

.method public final set(Lcom/google/android/apps/lightcycle/math/Vector3;)V
    .locals 1
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 81
    iget v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 82
    iget v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 83
    iget v0, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 84
    return-void
.end method

.method public final subtract(Lcom/google/android/apps/lightcycle/math/Vector3;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 56
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 57
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v1, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 58
    return-void
.end method

.method public toFloatArray()[F
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zero()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 125
    return-void
.end method
