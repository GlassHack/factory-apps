.class public Lcom/google/android/apps/lightcycle/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# static fields
.field public static final EPSILON:D = 1.0E-6


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 33
    iput-wide p3, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 34
    iput-wide p5, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 35
    iput-wide p7, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 36
    return-void
.end method

.method public static dot(Lcom/google/android/apps/lightcycle/math/Quaternion;Lcom/google/android/apps/lightcycle/math/Quaternion;)D
    .locals 6
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Quaternion;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    iget-wide v2, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iget-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static slerp(Lcom/google/android/apps/lightcycle/math/Quaternion;Lcom/google/android/apps/lightcycle/math/Quaternion;DLcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 18
    .param p0, "q0"    # Lcom/google/android/apps/lightcycle/math/Quaternion;
    .param p1, "q1"    # Lcom/google/android/apps/lightcycle/math/Quaternion;
    .param p2, "t"    # D
    .param p4, "resultQuat"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 151
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/lightcycle/math/Quaternion;->dot(Lcom/google/android/apps/lightcycle/math/Quaternion;Lcom/google/android/apps/lightcycle/math/Quaternion;)D

    move-result-wide v8

    .line 152
    .local v8, "cosVal":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v8, v14

    if-gtz v14, :cond_0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v14, v8, v14

    if-gez v14, :cond_1

    .line 153
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Quaternion;->set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V

    .line 161
    :cond_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 162
    .local v10, "factor":D
    const-wide/16 v14, 0x0

    cmpg-double v14, v8, v14

    if-gez v14, :cond_2

    .line 163
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 164
    neg-double v8, v8

    .line 169
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 170
    .local v2, "angle":D
    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v14, v2, v14

    if-gtz v14, :cond_3

    .line 171
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/math/Quaternion;->set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    div-double v12, v14, v16

    .line 175
    .local v12, "invSinVal":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, p2

    mul-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v4, v14, v12

    .line 176
    .local v4, "c0":D
    mul-double v14, p2, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    mul-double v6, v14, v12

    .line 178
    .local v6, "c1":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double/2addr v14, v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p4

    iput-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 179
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    mul-double/2addr v14, v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p4

    iput-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 180
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    mul-double/2addr v14, v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p4

    iput-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 181
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double/2addr v14, v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v14, v14, v16

    move-object/from16 v0, p4

    iput-wide v14, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    goto :goto_0
.end method


# virtual methods
.method public conjugate(Lcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 2
    .param p1, "resultQuat"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 129
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 130
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 131
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 132
    return-void
.end method

.method public fromRotationMatrix([F)V
    .locals 11
    .param p1, "matrix"    # [F

    .prologue
    .line 57
    const/4 v6, 0x0

    aget v6, p1, v6

    float-to-double v0, v6

    .line 58
    .local v0, "sx":D
    const/4 v6, 0x5

    aget v6, p1, v6

    float-to-double v2, v6

    .line 59
    .local v2, "sy":D
    const/16 v6, 0xa

    aget v6, p1, v6

    float-to-double v4, v6

    .line 60
    .local v4, "sz":D
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v0

    add-double/2addr v8, v2

    add-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 61
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v0

    sub-double/2addr v8, v2

    sub-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 62
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v0

    add-double/2addr v8, v2

    sub-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 63
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v0

    sub-double/2addr v8, v2

    add-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 65
    const/4 v6, 0x6

    aget v6, p1, v6

    const/16 v7, 0x9

    aget v7, p1, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iget-wide v7, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    if-eq v6, v7, :cond_2

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    neg-double v6, v6

    :goto_2
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 66
    const/16 v6, 0x8

    aget v6, p1, v6

    const/4 v7, 0x2

    aget v7, p1, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iget-wide v7, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_4

    const/4 v7, 0x1

    :goto_4
    if-eq v6, v7, :cond_5

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    neg-double v6, v6

    :goto_5
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 67
    const/4 v6, 0x1

    aget v6, p1, v6

    const/4 v7, 0x4

    aget v7, p1, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    const/4 v6, 0x1

    :goto_6
    iget-wide v7, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_7

    const/4 v7, 0x1

    :goto_7
    if-eq v6, v7, :cond_8

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    neg-double v6, v6

    :goto_8
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    goto :goto_2

    .line 66
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    goto :goto_5

    .line 67
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    goto :goto_8
.end method

.method public negate(Lcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 2
    .param p1, "resultQuat"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 211
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 212
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 213
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    neg-double v0, v0

    iput-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 214
    return-void
.end method

.method public normalize(Lcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 10
    .param p1, "resultQuat"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 192
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    iget-wide v8, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    iget-wide v8, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iget-wide v8, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 194
    .local v2, "len":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 195
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v0, v4, v2

    .line 196
    .local v0, "invLen":D
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    mul-double/2addr v4, v0

    iput-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 197
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    mul-double/2addr v4, v0

    iput-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 198
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    mul-double/2addr v4, v0

    iput-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 199
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    mul-double/2addr v4, v0

    iput-wide v4, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 201
    .end local v0    # "invLen":D
    :cond_0
    return-void
.end method

.method public set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/math/Quaternion;

    .prologue
    .line 44
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 45
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 46
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 47
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 48
    return-void
.end method

.method public toRotationMatrix([F)V
    .locals 21
    .param p1, "matrix"    # [F

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 77
    .local v6, "x":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 78
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 79
    .local v15, "z":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 80
    .local v2, "w":F
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v7, v18, v6

    .line 81
    .local v7, "x2":F
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v12, v18, v11

    .line 82
    .local v12, "y2":F
    const/high16 v18, 0x40000000    # 2.0f

    mul-float v16, v18, v15

    .line 83
    .local v16, "z2":F
    mul-float v3, v7, v2

    .line 84
    .local v3, "wx":F
    mul-float v4, v12, v2

    .line 85
    .local v4, "wy":F
    mul-float v5, v16, v2

    .line 86
    .local v5, "wz":F
    mul-float v8, v7, v6

    .line 87
    .local v8, "xx":F
    mul-float v9, v12, v6

    .line 88
    .local v9, "xy":F
    mul-float v10, v16, v6

    .line 89
    .local v10, "xz":F
    mul-float v13, v12, v11

    .line 90
    .local v13, "yy":F
    mul-float v14, v16, v11

    .line 91
    .local v14, "yz":F
    mul-float v17, v16, v15

    .line 93
    .local v17, "zz":F
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v13, v17

    sub-float v19, v19, v20

    aput v19, p1, v18

    .line 94
    const/16 v18, 0x1

    add-float v19, v9, v5

    aput v19, p1, v18

    .line 95
    const/16 v18, 0x2

    sub-float v19, v10, v4

    aput v19, p1, v18

    .line 96
    const/16 v18, 0x3

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 97
    const/16 v18, 0x4

    sub-float v19, v9, v5

    aput v19, p1, v18

    .line 98
    const/16 v18, 0x5

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v8, v17

    sub-float v19, v19, v20

    aput v19, p1, v18

    .line 99
    const/16 v18, 0x6

    add-float v19, v14, v3

    aput v19, p1, v18

    .line 100
    const/16 v18, 0x7

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 101
    const/16 v18, 0x8

    add-float v19, v10, v4

    aput v19, p1, v18

    .line 102
    const/16 v18, 0x9

    sub-float v19, v14, v3

    aput v19, p1, v18

    .line 103
    const/16 v18, 0xa

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v8, v13

    sub-float v19, v19, v20

    aput v19, p1, v18

    .line 104
    const/16 v18, 0xb

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 105
    const/16 v18, 0xc

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 106
    const/16 v18, 0xd

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 107
    const/16 v18, 0xe

    const/16 v19, 0x0

    aput v19, p1, v18

    .line 108
    const/16 v18, 0xf

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, p1, v18

    .line 109
    return-void
.end method
