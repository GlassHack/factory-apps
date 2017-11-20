.class public Lcom/google/android/apps/lightcycle/sensor/So3Util;
.super Ljava/lang/Object;
.source "So3Util.java"


# static fields
.field private static final M_SQRT1_2:D = 0.7071067811865476

.field private static final ONE_20TH:D = 0.1666666716337204

.field private static final ONE_6TH:D = 0.1666666716337204

.field private static muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private static sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private static sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 25
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 26
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 27
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 28
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 29
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 30
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatorField(ILcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 4
    .param p0, "i"    # I
    .param p1, "pos"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v3, 0x0

    .line 206
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p0, v3, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 207
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p0, 0x2

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {p2, v0, v3, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 208
    add-int/lit8 v0, p0, 0x2

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p0, 0x1

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v1

    invoke-virtual {p2, v0, v3, v1, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 209
    return-void
.end method

.method public static muFromSO3(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 23
    .param p0, "so3"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p1, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 110
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    add-double/2addr v5, v10

    const/4 v7, 0x2

    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    add-double/2addr v5, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v19, v5, v10

    .line 112
    .local v19, "cosAngle":D
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    sub-double/2addr v5, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v3, v5, v10

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    sub-double/2addr v5, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v10

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    const/4 v7, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v12

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v7, v10, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->length()D

    move-result-wide v21

    .line 117
    .local v21, "sinAngleAbs":D
    const-wide v5, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpl-double v5, v19, v5

    if-lez v5, :cond_1

    .line 119
    const-wide/16 v5, 0x0

    cmpl-double v5, v21, v5

    if-lez v5, :cond_0

    .line 120
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    div-double v5, v5, v21

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-wide v5, -0x40195f619980c433L    # -0.7071067811865476

    cmpl-double v5, v19, v5

    if-lez v5, :cond_2

    .line 124
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->acos(D)D

    move-result-wide v17

    .line 125
    .local v17, "angle":D
    div-double v5, v17, v21

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    goto :goto_0

    .line 130
    .end local v17    # "angle":D
    :cond_2
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    sub-double v17, v5, v10

    .line 131
    .restart local v17    # "angle":D
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    sub-double v3, v5, v19

    .line 132
    .local v3, "d0":D
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    sub-double v8, v5, v19

    .line 133
    .local v8, "d1":D
    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    sub-double v15, v5, v19

    .line 135
    .local v15, "d2":D
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 136
    .local v2, "r2":Lcom/google/android/apps/lightcycle/math/Vector3d;
    mul-double v5, v3, v3

    mul-double v10, v8, v8

    cmpl-double v5, v5, v10

    if-lez v5, :cond_4

    mul-double v5, v3, v3

    mul-double v10, v15, v15

    cmpl-double v5, v5, v10

    if-lez v5, :cond_4

    .line 138
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    add-double/2addr v5, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v10

    const/4 v7, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v7, v10, v12

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 150
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->dot(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpg-double v5, v5, v10

    if-gez v5, :cond_3

    .line 151
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v5, v6}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 153
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 154
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    mul-double v5, v8, v8

    mul-double v10, v15, v15

    cmpl-double v5, v5, v10

    if-lez v5, :cond_5

    .line 142
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    add-double/2addr v5, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v6, v5, v10

    const/4 v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    const/4 v5, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-object v5, v2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    goto :goto_1

    .line 146
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v10

    add-double/2addr v5, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v11, v5, v10

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v13

    add-double/2addr v5, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v13, v5, v13

    move-object v10, v2

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    goto/16 :goto_1
.end method

.method public static rodriguesSo3Exp(Lcom/google/android/apps/lightcycle/math/Vector3d;DDLcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 17
    .param p0, "w"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "kA"    # D
    .param p3, "kB"    # D
    .param p5, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double v5, v11, v13

    .line 171
    .local v5, "wx2":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double v7, v11, v13

    .line 172
    .local v7, "wy2":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double v9, v11, v13

    .line 174
    .local v9, "wz2":D
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v15, v7, v9

    mul-double v15, v15, p3

    sub-double/2addr v13, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 175
    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v15, v5, v9

    mul-double v15, v15, p3

    sub-double/2addr v13, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 176
    const/4 v11, 0x2

    const/4 v12, 0x2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v15, v5, v7

    mul-double v15, v15, p3

    sub-double/2addr v13, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 179
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double v1, p1, v11

    .line 180
    .local v1, "a":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v11, v13

    mul-double v3, p3, v11

    .line 181
    .local v3, "b":D
    const/4 v11, 0x0

    const/4 v12, 0x1

    sub-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 182
    const/4 v11, 0x1

    const/4 v12, 0x0

    add-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 185
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double v1, p1, v11

    .line 186
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v11, v13

    mul-double v3, p3, v11

    .line 187
    const/4 v11, 0x0

    const/4 v12, 0x2

    add-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 188
    const/4 v11, 0x2

    const/4 v12, 0x0

    sub-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 191
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double v1, p1, v11

    .line 192
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v11, v13

    mul-double v3, p3, v11

    .line 193
    const/4 v11, 0x1

    const/4 v12, 0x2

    sub-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 194
    const/4 v11, 0x2

    const/4 v12, 0x1

    add-double v13, v3, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 196
    return-void
.end method

.method public static sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 22
    .param p0, "w"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->dot(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)D

    move-result-wide v12

    .line 84
    .local v12, "thetaSq":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 87
    .local v10, "theta":D
    const-wide v14, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v12, v14

    if-gez v2, :cond_0

    .line 88
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double v16, v16, v12

    sub-double v3, v14, v16

    .line 89
    .local v3, "kA":D
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .local v5, "kB":D
    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 100
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/sensor/So3Util;->rodriguesSo3Exp(Lcom/google/android/apps/lightcycle/math/Vector3d;DDLcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    .line 101
    return-void

    .line 91
    .end local v3    # "kA":D
    .end local v5    # "kB":D
    :cond_0
    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v12, v14

    if-gez v2, :cond_1

    .line 92
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide v16, 0x3fa5555560000000L    # 0.0416666679084301

    mul-double v16, v16, v12

    sub-double v5, v14, v16

    .line 93
    .restart local v5    # "kB":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double v16, v16, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide v20, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double v20, v20, v12

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v3, v14, v16

    .restart local v3    # "kA":D
    goto :goto_0

    .line 95
    .end local v3    # "kA":D
    .end local v5    # "kB":D
    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v8, v14, v10

    .line 96
    .local v8, "invTheta":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v3, v14, v8

    .line 97
    .restart local v3    # "kA":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double v16, v8, v8

    mul-double v5, v14, v16

    .restart local v5    # "kB":D
    goto :goto_0
.end method

.method public static sO3FromTwoVec(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 9
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 45
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {p0, p1, v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 46
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->length()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 53
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 56
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 57
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 58
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 60
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 61
    .local v0, "r1":Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v6, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 62
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v7, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 63
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v3, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v4, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 64
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v8, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 66
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 67
    .local v1, "r2":Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v6, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 68
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v7, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 69
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v3, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v4, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 70
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 72
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->transpose()V

    .line 73
    invoke-static {v1, v0, p2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    goto :goto_0
.end method
