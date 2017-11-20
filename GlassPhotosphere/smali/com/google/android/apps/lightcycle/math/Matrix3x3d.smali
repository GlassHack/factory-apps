.class public Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    .line 21
    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 2
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 8
    .param p1, "o"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v3

    aput-wide v1, v0, v3

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v4

    aput-wide v1, v0, v4

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v5

    aput-wide v1, v0, v5

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v6

    aput-wide v1, v0, v6

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v7

    aput-wide v1, v0, v7

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 59
    return-void
.end method

.method public static add(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 10
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v5

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v0, v5

    .line 266
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v6

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v6

    add-double/2addr v1, v3

    aput-wide v1, v0, v6

    .line 267
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v7

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v7

    add-double/2addr v1, v3

    aput-wide v1, v0, v7

    .line 268
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v8

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v8

    add-double/2addr v1, v3

    aput-wide v1, v0, v8

    .line 269
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v9

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v9

    add-double/2addr v1, v3

    aput-wide v1, v0, v9

    .line 270
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 271
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 272
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 273
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 274
    return-void
.end method

.method public static mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 24
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x3

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x2

    aget-wide v3, v3, v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x6

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double v2, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x4

    aget-wide v8, v1, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x7

    aget-wide v8, v1, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x2

    aget-wide v8, v1, v8

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x5

    aget-wide v10, v1, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x2

    aget-wide v8, v1, v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v10, 0x8

    aget-wide v10, v1, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x3

    aget-wide v8, v1, v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x0

    aget-wide v10, v1, v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x4

    aget-wide v10, v1, v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x3

    aget-wide v12, v1, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x5

    aget-wide v10, v1, v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x6

    aget-wide v12, v1, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x3

    aget-wide v10, v1, v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x1

    aget-wide v12, v1, v12

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x4

    aget-wide v12, v1, v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x4

    aget-wide v14, v1, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x5

    aget-wide v12, v1, v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x7

    aget-wide v14, v1, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x3

    aget-wide v12, v1, v12

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x2

    aget-wide v14, v1, v14

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x4

    aget-wide v14, v1, v14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x5

    aget-wide v16, v1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x5

    aget-wide v14, v1, v14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x8

    aget-wide v16, v1, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x6

    aget-wide v14, v1, v14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x0

    aget-wide v16, v1, v16

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x7

    aget-wide v16, v1, v16

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x3

    aget-wide v18, v1, v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x8

    aget-wide v16, v1, v16

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x6

    aget-wide v18, v1, v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x6

    aget-wide v16, v1, v16

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x1

    aget-wide v18, v1, v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x7

    aget-wide v18, v1, v18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v20, 0x4

    aget-wide v20, v1, v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x8

    aget-wide v18, v1, v18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v20, 0x7

    aget-wide v20, v1, v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v18, 0x6

    aget-wide v18, v1, v18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v20, 0x2

    aget-wide v20, v1, v20

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v20, 0x7

    aget-wide v20, v1, v20

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v22, 0x5

    aget-wide v22, v1, v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v20, 0x8

    aget-wide v20, v1, v20

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v22, 0x8

    aget-wide v22, v1, v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v19}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(DDDDDDDDD)V

    .line 293
    return-void
.end method

.method public static mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 12
    .param p0, "a"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;
    .param p1, "v"    # Lcom/google/android/apps/lightcycle/math/Vector3d;
    .param p2, "result"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 303
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v0, v6, v8

    .line 304
    .local v0, "x":D
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 305
    .local v2, "y":D
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 306
    .local v4, "z":D
    iput-wide v0, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 307
    iput-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 308
    iput-wide v4, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 309
    return-void
.end method


# virtual methods
.method public determinant()D
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 317
    invoke-virtual {p0, v12, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    invoke-virtual {p0, v10, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v11, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v11, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v10, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-virtual {p0, v12, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-virtual {p0, v12, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v10}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v0, v0, p1

    iput-wide v0, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    .line 155
    return-void
.end method

.method public invert(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)Z
    .locals 29
    .param p1, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->determinant()D

    move-result-wide v21

    .line 329
    .local v21, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v21, v2

    if-nez v2, :cond_0

    .line 330
    const/4 v2, 0x0

    .line 348
    :goto_0
    return v2

    .line 333
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v23, v2, v21

    .line 335
    .local v23, "invdet":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double v3, v2, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    aget-wide v7, v2, v7

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v9, v2, v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    neg-double v5, v5

    mul-double v5, v5, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v9, v2, v9

    mul-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v9, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v11, v2, v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    mul-double v7, v7, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    aget-wide v9, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v11, v2, v11

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v11, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v13, v2, v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    neg-double v9, v9

    mul-double v9, v9, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x0

    aget-wide v11, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v13, 0x8

    aget-wide v13, v2, v13

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x2

    aget-wide v13, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x6

    aget-wide v15, v2, v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double v11, v11, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v13, 0x0

    aget-wide v13, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v15, v2, v15

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x3

    aget-wide v15, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v17, 0x2

    aget-wide v17, v2, v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    neg-double v13, v13

    mul-double v13, v13, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v15, 0x3

    aget-wide v15, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v17, 0x7

    aget-wide v17, v2, v17

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v17, 0x6

    aget-wide v17, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v19, 0x4

    aget-wide v19, v2, v19

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    mul-double v15, v15, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v17, 0x0

    aget-wide v17, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v19, 0x7

    aget-wide v19, v2, v19

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v19, 0x6

    aget-wide v19, v2, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v25, 0x1

    aget-wide v25, v2, v25

    mul-double v19, v19, v25

    sub-double v17, v17, v19

    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v19, 0x0

    aget-wide v19, v2, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v25, 0x4

    aget-wide v25, v2, v25

    mul-double v19, v19, v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v25, 0x3

    aget-wide v25, v2, v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v27, 0x1

    aget-wide v27, v2, v27

    mul-double v25, v25, v27

    sub-double v19, v19, v25

    mul-double v19, v19, v23

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v20}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(DDDDDDDDD)V

    .line 348
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public minusEquals(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 10
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v5

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, v0, v5

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v6

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v6

    sub-double/2addr v1, v3

    aput-wide v1, v0, v6

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v7

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v7

    sub-double/2addr v1, v3

    aput-wide v1, v0, v7

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v8

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v8

    sub-double/2addr v1, v3

    aput-wide v1, v0, v8

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v9

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v9

    sub-double/2addr v1, v3

    aput-wide v1, v0, v9

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 218
    return-void
.end method

.method public plusEquals(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 10
    .param p1, "b"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v5

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v5

    add-double/2addr v1, v3

    aput-wide v1, v0, v5

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v6

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v6

    add-double/2addr v1, v3

    aput-wide v1, v0, v6

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v7

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v7

    add-double/2addr v1, v3

    aput-wide v1, v0, v7

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v8

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v8

    add-double/2addr v1, v3

    aput-wide v1, v0, v8

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v0, v9

    iget-object v3, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v9

    add-double/2addr v1, v3

    aput-wide v1, v0, v9

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 201
    return-void
.end method

.method public scale(D)V
    .locals 4
    .param p1, "s"    # D

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 184
    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 2
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 80
    return-void
.end method

.method public set(IID)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # D

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 143
    return-void
.end method

.method public set(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 8
    .param p1, "o"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v3

    aput-wide v1, v0, v3

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v4

    aput-wide v1, v0, v4

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v5

    aput-wide v1, v0, v5

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v6

    aput-wide v1, v0, v6

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v1, v1, v7

    aput-wide v1, v0, v7

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 97
    return-void
.end method

.method public setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 4
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/android/apps/lightcycle/math/Vector3d;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-wide v1, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    aput-wide v1, v0, p1

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    aput-wide v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    iget-wide v2, p2, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    aput-wide v2, v0, v1

    .line 167
    return-void
.end method

.method public setIdentity()V
    .locals 14

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v11, 0x7

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-wide v12, v8, v9

    aput-wide v12, v6, v7

    aput-wide v12, v4, v5

    aput-wide v12, v2, v3

    aput-wide v12, v0, v1

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    aput-wide v6, v2, v3

    aput-wide v6, v0, v1

    .line 112
    return-void
.end method

.method public setSameDiagonal(D)V
    .locals 6
    .param p1, "d"    # D

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aput-wide p1, v4, v5

    aput-wide p1, v2, v3

    aput-wide p1, v0, v1

    .line 121
    return-void
.end method

.method public setZero()V
    .locals 21

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v10, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v16, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const-wide/16 v19, 0x0

    aput-wide v19, v17, v18

    aput-wide v19, v15, v16

    aput-wide v19, v13, v14

    aput-wide v19, v11, v12

    aput-wide v19, v9, v10

    aput-wide v19, v7, v8

    aput-wide v19, v5, v6

    aput-wide v19, v3, v4

    aput-wide v19, v1, v2

    .line 104
    return-void
.end method

.method public transpose()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 224
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v0, v2, v5

    .line 225
    .local v0, "tmp":D
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v7

    aput-wide v3, v2, v5

    .line 226
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aput-wide v0, v2, v7

    .line 228
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v0, v2, v6

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v3, v3, v9

    aput-wide v3, v2, v6

    .line 230
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aput-wide v0, v2, v9

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v0, v2, v8

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v4, 0x7

    aget-wide v3, v3, v4

    aput-wide v3, v2, v8

    .line 234
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aput-wide v0, v2, v3

    .line 235
    return-void
.end method

.method public transpose(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 14
    .param p1, "result"    # Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 243
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v0, v6, v10

    .line 244
    .local v0, "m1":D
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v6, v11

    .line 245
    .local v2, "m2":D
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v4, v6, v7

    .line 246
    .local v4, "m5":D
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v7, v7, v9

    aput-wide v7, v6, v9

    .line 247
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v7, v7, v12

    aput-wide v7, v6, v10

    .line 248
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v8, 0x6

    aget-wide v7, v7, v8

    aput-wide v7, v6, v11

    .line 249
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aput-wide v0, v6, v12

    .line 250
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v7, v7, v13

    aput-wide v7, v6, v13

    .line 251
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 252
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aput-wide v2, v6, v7

    .line 253
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aput-wide v4, v6, v7

    .line 254
    iget-object v6, p1, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 255
    return-void
.end method
