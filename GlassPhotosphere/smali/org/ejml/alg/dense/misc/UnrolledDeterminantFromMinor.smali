.class public Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;
.super Ljava/lang/Object;


# static fields
.field public static final MAX:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static det(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 2

    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det2(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det3(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det4(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det5(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/ejml/data/RowD1Matrix64F;->numRows:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lorg/ejml/alg/dense/misc/UnrolledDeterminantFromMinor;->det6(Lorg/ejml/data/RowD1Matrix64F;)D

    move-result-wide v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static det2(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 7

    iget-object v0, p0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    sub-double v0, v1, v3

    return-wide v0
.end method

.method public static det3(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    const/4 v8, 0x3

    aget-wide v8, v1, v8

    const/4 v10, 0x4

    aget-wide v10, v1, v10

    const/4 v12, 0x5

    aget-wide v12, v1, v12

    const/4 v14, 0x6

    aget-wide v14, v1, v14

    const/16 v16, 0x7

    aget-wide v16, v1, v16

    const/16 v18, 0x8

    aget-wide v18, v1, v18

    mul-double v20, v10, v18

    mul-double v22, v12, v16

    sub-double v20, v20, v22

    mul-double v1, v2, v20

    mul-double v18, v18, v8

    mul-double/2addr v12, v14

    sub-double v12, v18, v12

    mul-double v3, v4, v12

    mul-double v8, v8, v16

    mul-double/2addr v10, v14

    sub-double/2addr v8, v10

    mul-double v5, v6, v8

    sub-double/2addr v1, v3

    add-double/2addr v1, v5

    return-wide v1
.end method

.method public static det4(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    const/4 v2, 0x5

    aget-wide v2, v1, v2

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    const/4 v6, 0x7

    aget-wide v6, v1, v6

    const/16 v8, 0x9

    aget-wide v8, v1, v8

    const/16 v10, 0xa

    aget-wide v10, v1, v10

    const/16 v12, 0xb

    aget-wide v12, v1, v12

    const/16 v14, 0xd

    aget-wide v14, v1, v14

    const/16 v16, 0xe

    aget-wide v16, v1, v16

    const/16 v18, 0xf

    aget-wide v18, v1, v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    aget-wide v22, v1, v22

    mul-double v24, v10, v18

    mul-double v26, v12, v16

    sub-double v24, v24, v26

    mul-double v2, v2, v24

    mul-double v24, v8, v18

    mul-double v26, v12, v14

    sub-double v24, v24, v26

    mul-double v24, v24, v4

    sub-double v2, v2, v24

    mul-double v8, v8, v16

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    mul-double v2, v2, v22

    add-double v2, v2, v20

    const/4 v8, 0x4

    aget-wide v8, v1, v8

    const/16 v14, 0x8

    aget-wide v14, v1, v14

    const/16 v20, 0xc

    aget-wide v20, v1, v20

    const/16 v22, 0x1

    aget-wide v22, v1, v22

    mul-double v24, v10, v18

    mul-double v26, v12, v16

    sub-double v24, v24, v26

    mul-double v24, v24, v8

    mul-double v26, v14, v18

    mul-double v28, v12, v20

    sub-double v26, v26, v28

    mul-double v4, v4, v26

    sub-double v4, v24, v4

    mul-double v16, v16, v14

    mul-double v10, v10, v20

    sub-double v10, v16, v10

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    mul-double v4, v4, v22

    sub-double/2addr v2, v4

    const/4 v4, 0x5

    aget-wide v4, v1, v4

    const/16 v10, 0x9

    aget-wide v10, v1, v10

    const/16 v16, 0xd

    aget-wide v16, v1, v16

    const/16 v22, 0x2

    aget-wide v22, v1, v22

    mul-double v24, v10, v18

    mul-double v26, v12, v16

    sub-double v24, v24, v26

    mul-double v24, v24, v8

    mul-double v18, v18, v14

    mul-double v12, v12, v20

    sub-double v12, v18, v12

    mul-double/2addr v12, v4

    sub-double v12, v24, v12

    mul-double v18, v14, v16

    mul-double v24, v10, v20

    sub-double v18, v18, v24

    mul-double v6, v6, v18

    add-double/2addr v6, v12

    mul-double v6, v6, v22

    add-double/2addr v2, v6

    const/4 v6, 0x6

    aget-wide v6, v1, v6

    const/16 v12, 0xa

    aget-wide v12, v1, v12

    const/16 v18, 0xe

    aget-wide v18, v1, v18

    const/16 v22, 0x3

    aget-wide v22, v1, v22

    mul-double v24, v10, v18

    mul-double v26, v12, v16

    sub-double v24, v24, v26

    mul-double v8, v8, v24

    mul-double v18, v18, v14

    mul-double v12, v12, v20

    sub-double v12, v18, v12

    mul-double/2addr v4, v12

    sub-double v4, v8, v4

    mul-double v8, v14, v16

    mul-double v10, v10, v20

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double v4, v4, v22

    sub-double v1, v2, v4

    return-wide v1
.end method

.method public static det5(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    const/4 v2, 0x6

    aget-wide v2, v1, v2

    const/4 v4, 0x7

    aget-wide v4, v1, v4

    const/16 v6, 0x8

    aget-wide v6, v1, v6

    const/16 v8, 0x9

    aget-wide v8, v1, v8

    const/16 v10, 0xb

    aget-wide v10, v1, v10

    const/16 v12, 0xc

    aget-wide v12, v1, v12

    const/16 v14, 0xd

    aget-wide v14, v1, v14

    const/16 v16, 0xe

    aget-wide v16, v1, v16

    const/16 v18, 0x10

    aget-wide v18, v1, v18

    const/16 v20, 0x11

    aget-wide v20, v1, v20

    const/16 v22, 0x12

    aget-wide v22, v1, v22

    const/16 v24, 0x13

    aget-wide v24, v1, v24

    const/16 v26, 0x15

    aget-wide v26, v1, v26

    const/16 v28, 0x16

    aget-wide v28, v1, v28

    const/16 v30, 0x17

    aget-wide v30, v1, v30

    const/16 v32, 0x18

    aget-wide v32, v1, v32

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    aget-wide v36, v1, v36

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v20, v30

    mul-double v42, v22, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v2, v2, v38

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v10

    mul-double v40, v18, v32

    mul-double v42, v24, v26

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v18, v30

    mul-double v42, v22, v26

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v4

    sub-double v2, v2, v38

    mul-double v38, v20, v32

    mul-double v40, v24, v28

    sub-double v38, v38, v40

    mul-double v38, v38, v10

    mul-double v40, v18, v32

    mul-double v42, v24, v26

    sub-double v40, v40, v42

    mul-double v40, v40, v12

    sub-double v38, v38, v40

    mul-double v40, v18, v28

    mul-double v42, v20, v26

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v6

    add-double v2, v2, v38

    mul-double v38, v20, v30

    mul-double v40, v22, v28

    sub-double v38, v38, v40

    mul-double v10, v10, v38

    mul-double v38, v18, v30

    mul-double v40, v22, v26

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    sub-double v10, v10, v38

    mul-double v18, v18, v28

    mul-double v26, v26, v20

    sub-double v18, v18, v26

    mul-double v18, v18, v14

    add-double v10, v10, v18

    mul-double/2addr v10, v8

    sub-double/2addr v2, v10

    mul-double v2, v2, v36

    add-double v2, v2, v34

    const/4 v10, 0x5

    aget-wide v10, v1, v10

    const/16 v18, 0xa

    aget-wide v18, v1, v18

    const/16 v26, 0xf

    aget-wide v26, v1, v26

    const/16 v34, 0x14

    aget-wide v34, v1, v34

    const/16 v36, 0x1

    aget-wide v36, v1, v36

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v20, v30

    mul-double v42, v22, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v10

    mul-double v40, v22, v32

    mul-double v42, v24, v30

    sub-double v40, v40, v42

    mul-double v40, v40, v18

    mul-double v42, v26, v32

    mul-double v44, v24, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v14

    sub-double v40, v40, v42

    mul-double v42, v26, v30

    mul-double v44, v22, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v16

    add-double v40, v40, v42

    mul-double v4, v4, v40

    sub-double v4, v38, v4

    mul-double v38, v20, v32

    mul-double v40, v24, v28

    sub-double v38, v38, v40

    mul-double v38, v38, v18

    mul-double v40, v26, v32

    mul-double v42, v24, v34

    sub-double v40, v40, v42

    mul-double v40, v40, v12

    sub-double v38, v38, v40

    mul-double v40, v26, v28

    mul-double v42, v20, v34

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v6

    add-double v4, v4, v38

    mul-double v38, v20, v30

    mul-double v40, v22, v28

    sub-double v38, v38, v40

    mul-double v38, v38, v18

    mul-double v40, v26, v30

    mul-double v42, v22, v34

    sub-double v40, v40, v42

    mul-double v12, v12, v40

    sub-double v12, v38, v12

    mul-double v28, v28, v26

    mul-double v20, v20, v34

    sub-double v20, v28, v20

    mul-double v20, v20, v14

    add-double v12, v12, v20

    mul-double/2addr v12, v8

    sub-double/2addr v4, v12

    mul-double v4, v4, v36

    sub-double/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    const/16 v12, 0xb

    aget-wide v12, v1, v12

    const/16 v20, 0x10

    aget-wide v20, v1, v20

    const/16 v28, 0x15

    aget-wide v28, v1, v28

    const/16 v36, 0x2

    aget-wide v36, v1, v36

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v20, v30

    mul-double v42, v22, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v10

    mul-double v40, v22, v32

    mul-double v42, v24, v30

    sub-double v40, v40, v42

    mul-double v40, v40, v18

    mul-double v42, v26, v32

    mul-double v44, v24, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v14

    sub-double v40, v40, v42

    mul-double v42, v26, v30

    mul-double v44, v22, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v16

    add-double v40, v40, v42

    mul-double v40, v40, v4

    sub-double v38, v38, v40

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v18

    mul-double v42, v26, v32

    mul-double v44, v24, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v12

    sub-double v40, v40, v42

    mul-double v42, v26, v28

    mul-double v44, v20, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v16

    add-double v40, v40, v42

    mul-double v6, v6, v40

    add-double v6, v6, v38

    mul-double v38, v20, v30

    mul-double v40, v22, v28

    sub-double v38, v38, v40

    mul-double v38, v38, v18

    mul-double v30, v30, v26

    mul-double v22, v22, v34

    sub-double v22, v30, v22

    mul-double v22, v22, v12

    sub-double v22, v38, v22

    mul-double v30, v26, v28

    mul-double v38, v20, v34

    sub-double v30, v30, v38

    mul-double v14, v14, v30

    add-double v14, v14, v22

    mul-double/2addr v14, v8

    sub-double/2addr v6, v14

    mul-double v6, v6, v36

    add-double/2addr v2, v6

    const/4 v6, 0x7

    aget-wide v6, v1, v6

    const/16 v14, 0xc

    aget-wide v14, v1, v14

    const/16 v22, 0x11

    aget-wide v22, v1, v22

    const/16 v30, 0x16

    aget-wide v30, v1, v30

    const/16 v36, 0x3

    aget-wide v36, v1, v36

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v20, v30

    mul-double v42, v22, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v38, v38, v10

    mul-double v40, v22, v32

    mul-double v42, v24, v30

    sub-double v40, v40, v42

    mul-double v40, v40, v18

    mul-double v42, v26, v32

    mul-double v44, v24, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v14

    sub-double v40, v40, v42

    mul-double v42, v26, v30

    mul-double v44, v22, v34

    sub-double v42, v42, v44

    mul-double v42, v42, v16

    add-double v40, v40, v42

    mul-double v40, v40, v4

    sub-double v38, v38, v40

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v18

    mul-double v32, v32, v26

    mul-double v24, v24, v34

    sub-double v24, v32, v24

    mul-double v24, v24, v12

    sub-double v24, v40, v24

    mul-double v32, v26, v28

    mul-double v40, v20, v34

    sub-double v32, v32, v40

    mul-double v16, v16, v32

    add-double v16, v16, v24

    mul-double v16, v16, v6

    add-double v16, v16, v38

    mul-double v24, v20, v30

    mul-double v32, v22, v28

    sub-double v24, v24, v32

    mul-double v24, v24, v18

    mul-double v32, v26, v30

    mul-double v38, v22, v34

    sub-double v32, v32, v38

    mul-double v32, v32, v12

    sub-double v24, v24, v32

    mul-double v32, v26, v28

    mul-double v38, v20, v34

    sub-double v32, v32, v38

    mul-double v32, v32, v14

    add-double v24, v24, v32

    mul-double v8, v8, v24

    sub-double v8, v16, v8

    mul-double v8, v8, v36

    sub-double/2addr v2, v8

    const/16 v8, 0x8

    aget-wide v8, v1, v8

    const/16 v16, 0xd

    aget-wide v16, v1, v16

    const/16 v24, 0x12

    aget-wide v24, v1, v24

    const/16 v32, 0x17

    aget-wide v32, v1, v32

    const/16 v36, 0x4

    aget-wide v36, v1, v36

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v12

    mul-double v40, v20, v32

    mul-double v42, v24, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v20, v30

    mul-double v42, v22, v28

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v10, v10, v38

    mul-double v38, v22, v32

    mul-double v40, v24, v30

    sub-double v38, v38, v40

    mul-double v38, v38, v18

    mul-double v40, v26, v32

    mul-double v42, v24, v34

    sub-double v40, v40, v42

    mul-double v40, v40, v14

    sub-double v38, v38, v40

    mul-double v40, v26, v30

    mul-double v42, v22, v34

    sub-double v40, v40, v42

    mul-double v40, v40, v16

    add-double v38, v38, v40

    mul-double v4, v4, v38

    sub-double v4, v10, v4

    mul-double v10, v20, v32

    mul-double v38, v24, v28

    sub-double v10, v10, v38

    mul-double v10, v10, v18

    mul-double v32, v32, v26

    mul-double v24, v24, v34

    sub-double v24, v32, v24

    mul-double v24, v24, v12

    sub-double v10, v10, v24

    mul-double v24, v26, v28

    mul-double v32, v20, v34

    sub-double v24, v24, v32

    mul-double v16, v16, v24

    add-double v10, v10, v16

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    mul-double v6, v20, v30

    mul-double v10, v22, v28

    sub-double/2addr v6, v10

    mul-double v6, v6, v18

    mul-double v10, v26, v30

    mul-double v16, v22, v34

    sub-double v10, v10, v16

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    mul-double v10, v26, v28

    mul-double v12, v20, v34

    sub-double/2addr v10, v12

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double v4, v4, v36

    add-double v1, v2, v4

    return-wide v1
.end method

.method public static det6(Lorg/ejml/data/RowD1Matrix64F;)D
    .locals 66

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ejml/data/RowD1Matrix64F;->data:[D

    const/4 v2, 0x7

    aget-wide v2, v1, v2

    const/16 v4, 0x8

    aget-wide v4, v1, v4

    const/16 v6, 0x9

    aget-wide v6, v1, v6

    const/16 v8, 0xa

    aget-wide v8, v1, v8

    const/16 v10, 0xb

    aget-wide v10, v1, v10

    const/16 v12, 0xd

    aget-wide v12, v1, v12

    const/16 v14, 0xe

    aget-wide v14, v1, v14

    const/16 v16, 0xf

    aget-wide v16, v1, v16

    const/16 v18, 0x10

    aget-wide v18, v1, v18

    const/16 v20, 0x11

    aget-wide v20, v1, v20

    const/16 v22, 0x13

    aget-wide v22, v1, v22

    const/16 v24, 0x14

    aget-wide v24, v1, v24

    const/16 v26, 0x15

    aget-wide v26, v1, v26

    const/16 v28, 0x16

    aget-wide v28, v1, v28

    const/16 v30, 0x17

    aget-wide v30, v1, v30

    const/16 v32, 0x19

    aget-wide v32, v1, v32

    const/16 v34, 0x1a

    aget-wide v34, v1, v34

    const/16 v36, 0x1b

    aget-wide v36, v1, v36

    const/16 v38, 0x1c

    aget-wide v38, v1, v38

    const/16 v40, 0x1d

    aget-wide v40, v1, v40

    const/16 v42, 0x1f

    aget-wide v42, v1, v42

    const/16 v44, 0x20

    aget-wide v44, v1, v44

    const/16 v46, 0x21

    aget-wide v46, v1, v46

    const/16 v48, 0x22

    aget-wide v48, v1, v48

    const/16 v50, 0x23

    aget-wide v50, v1, v50

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v2, v2, v56

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v32, v48

    mul-double v62, v38, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v32, v46

    mul-double v62, v36, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v48

    mul-double v62, v38, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v32, v46

    mul-double v62, v36, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v4

    sub-double v2, v2, v56

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v32, v48

    mul-double v62, v38, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v32, v44

    mul-double v62, v34, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v48

    mul-double v62, v38, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v32, v44

    mul-double v62, v34, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v6

    add-double v2, v2, v56

    mul-double v56, v36, v50

    mul-double v58, v40, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v32, v46

    mul-double v62, v36, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v50

    mul-double v62, v40, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v32, v44

    mul-double v62, v34, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    add-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v32, v46

    mul-double v62, v36, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v32, v44

    mul-double v62, v34, v42

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v8

    sub-double v2, v2, v56

    mul-double v56, v36, v48

    mul-double v58, v38, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v12, v12, v56

    mul-double v56, v36, v48

    mul-double v58, v38, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v32, v48

    mul-double v60, v38, v42

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v32, v46

    mul-double v60, v36, v42

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v14

    sub-double v12, v12, v56

    mul-double v56, v34, v48

    mul-double v58, v38, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v32, v48

    mul-double v60, v38, v42

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    sub-double v56, v56, v58

    mul-double v58, v32, v44

    mul-double v60, v34, v42

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v16

    add-double v12, v12, v56

    mul-double v56, v34, v46

    mul-double v58, v36, v44

    sub-double v56, v56, v58

    mul-double v22, v22, v56

    mul-double v56, v32, v46

    mul-double v58, v36, v42

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    sub-double v22, v22, v56

    mul-double v32, v32, v44

    mul-double v42, v42, v34

    sub-double v32, v32, v42

    mul-double v32, v32, v26

    add-double v22, v22, v32

    mul-double v22, v22, v18

    sub-double v12, v12, v22

    mul-double/2addr v12, v10

    add-double/2addr v2, v12

    mul-double v2, v2, v54

    add-double v2, v2, v52

    const/4 v12, 0x6

    aget-wide v12, v1, v12

    const/16 v22, 0xc

    aget-wide v22, v1, v22

    const/16 v32, 0x12

    aget-wide v32, v1, v32

    const/16 v42, 0x18

    aget-wide v42, v1, v42

    const/16 v52, 0x1e

    aget-wide v52, v1, v52

    const/16 v54, 0x1

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v16

    sub-double v58, v58, v60

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v4, v4, v58

    sub-double v4, v56, v4

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v6

    add-double v4, v4, v56

    mul-double v56, v36, v50

    mul-double v58, v40, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    add-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v8

    sub-double v4, v4, v56

    mul-double v56, v36, v48

    mul-double v58, v38, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v14, v14, v58

    sub-double v14, v56, v14

    mul-double v56, v34, v48

    mul-double v58, v38, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v58, v42, v48

    mul-double v60, v38, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    sub-double v56, v56, v58

    mul-double v58, v42, v44

    mul-double v60, v34, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v16

    add-double v14, v14, v56

    mul-double v56, v34, v46

    mul-double v58, v36, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v58, v42, v46

    mul-double v60, v36, v52

    sub-double v58, v58, v60

    mul-double v24, v24, v58

    sub-double v24, v56, v24

    mul-double v44, v44, v42

    mul-double v34, v34, v52

    sub-double v34, v44, v34

    mul-double v34, v34, v26

    add-double v24, v24, v34

    mul-double v24, v24, v18

    sub-double v14, v14, v24

    mul-double/2addr v14, v10

    add-double/2addr v4, v14

    mul-double v4, v4, v54

    sub-double/2addr v2, v4

    const/4 v4, 0x7

    aget-wide v4, v1, v4

    const/16 v14, 0xd

    aget-wide v14, v1, v14

    const/16 v24, 0x13

    aget-wide v24, v1, v24

    const/16 v34, 0x19

    aget-wide v34, v1, v34

    const/16 v44, 0x1f

    aget-wide v44, v1, v44

    const/16 v54, 0x2

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v16

    sub-double v58, v58, v60

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v58, v58, v4

    sub-double v56, v56, v58

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v14

    sub-double v58, v58, v60

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v6, v6, v58

    add-double v6, v6, v56

    mul-double v56, v36, v50

    mul-double v58, v40, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v50

    mul-double v60, v40, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    add-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v8

    sub-double v6, v6, v56

    mul-double v56, v36, v48

    mul-double v58, v38, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v24

    sub-double v58, v58, v60

    mul-double v60, v42, v44

    mul-double v62, v34, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v16, v16, v58

    add-double v16, v16, v56

    mul-double v56, v34, v46

    mul-double v58, v36, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v46, v46, v42

    mul-double v36, v36, v52

    sub-double v36, v46, v36

    mul-double v36, v36, v24

    sub-double v36, v56, v36

    mul-double v46, v42, v44

    mul-double v56, v34, v52

    sub-double v46, v46, v56

    mul-double v26, v26, v46

    add-double v26, v26, v36

    mul-double v26, v26, v18

    sub-double v16, v16, v26

    mul-double v16, v16, v10

    add-double v6, v6, v16

    mul-double v6, v6, v54

    add-double/2addr v2, v6

    const/16 v6, 0x8

    aget-wide v6, v1, v6

    const/16 v16, 0xe

    aget-wide v16, v1, v16

    const/16 v26, 0x14

    aget-wide v26, v1, v26

    const/16 v36, 0x1a

    aget-wide v36, v1, v36

    const/16 v46, 0x20

    aget-wide v46, v1, v46

    const/16 v54, 0x3

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v16

    sub-double v58, v58, v60

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v58, v58, v4

    sub-double v56, v56, v58

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v14

    sub-double v58, v58, v60

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v58, v58, v6

    add-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v14

    sub-double v58, v58, v60

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v16

    add-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v8, v8, v58

    sub-double v8, v56, v8

    mul-double v56, v36, v48

    mul-double v58, v38, v46

    sub-double v56, v56, v58

    mul-double v56, v56, v24

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    sub-double v56, v56, v58

    mul-double v58, v34, v46

    mul-double v60, v36, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v14

    sub-double v56, v56, v58

    mul-double v58, v34, v48

    mul-double v60, v38, v44

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v48, v48, v42

    mul-double v38, v38, v52

    sub-double v38, v48, v38

    mul-double v38, v38, v24

    sub-double v38, v58, v38

    mul-double v48, v42, v44

    mul-double v58, v34, v52

    sub-double v48, v48, v58

    mul-double v28, v28, v48

    add-double v28, v28, v38

    mul-double v28, v28, v16

    add-double v28, v28, v56

    mul-double v38, v34, v46

    mul-double v48, v36, v44

    sub-double v38, v38, v48

    mul-double v38, v38, v32

    mul-double v48, v42, v46

    mul-double v56, v36, v52

    sub-double v48, v48, v56

    mul-double v48, v48, v24

    sub-double v38, v38, v48

    mul-double v48, v42, v44

    mul-double v56, v34, v52

    sub-double v48, v48, v56

    mul-double v48, v48, v26

    add-double v38, v38, v48

    mul-double v18, v18, v38

    sub-double v18, v28, v18

    mul-double v18, v18, v10

    add-double v8, v8, v18

    mul-double v8, v8, v54

    sub-double/2addr v2, v8

    const/16 v8, 0x9

    aget-wide v8, v1, v8

    const/16 v18, 0xf

    aget-wide v18, v1, v18

    const/16 v28, 0x15

    aget-wide v28, v1, v28

    const/16 v38, 0x1b

    aget-wide v38, v1, v38

    const/16 v48, 0x21

    aget-wide v48, v1, v48

    const/16 v54, 0x4

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v56, v56, v12

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v26

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v16

    sub-double v58, v58, v60

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v36, v48

    mul-double v62, v38, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v58, v58, v4

    sub-double v56, v56, v58

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v38, v50

    mul-double v62, v40, v48

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    sub-double v60, v60, v62

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v14

    sub-double v58, v58, v60

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v18

    add-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v48

    mul-double v64, v38, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v24

    sub-double v60, v60, v62

    mul-double v62, v42, v44

    mul-double v64, v34, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v28

    add-double v60, v60, v62

    mul-double v60, v60, v20

    sub-double v58, v58, v60

    mul-double v58, v58, v6

    add-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v22

    mul-double v60, v36, v50

    mul-double v62, v40, v46

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v62, v42, v50

    mul-double v64, v40, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v26

    sub-double v60, v60, v62

    mul-double v62, v42, v46

    mul-double v64, v36, v52

    sub-double v62, v62, v64

    mul-double v62, v62, v30

    add-double v60, v60, v62

    mul-double v60, v60, v14

    sub-double v58, v58, v60

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v32

    mul-double v50, v50, v42

    mul-double v40, v40, v52

    sub-double v40, v50, v40

    mul-double v40, v40, v24

    sub-double v40, v60, v40

    mul-double v50, v42, v44

    mul-double v60, v34, v52

    sub-double v50, v50, v60

    mul-double v30, v30, v50

    add-double v30, v30, v40

    mul-double v30, v30, v16

    add-double v30, v30, v58

    mul-double v40, v34, v46

    mul-double v50, v36, v44

    sub-double v40, v40, v50

    mul-double v40, v40, v32

    mul-double v50, v42, v46

    mul-double v58, v36, v52

    sub-double v50, v50, v58

    mul-double v50, v50, v24

    sub-double v40, v40, v50

    mul-double v50, v42, v44

    mul-double v58, v34, v52

    sub-double v50, v50, v58

    mul-double v50, v50, v26

    add-double v40, v40, v50

    mul-double v20, v20, v40

    sub-double v20, v30, v20

    mul-double v20, v20, v8

    sub-double v20, v56, v20

    mul-double v30, v36, v48

    mul-double v40, v38, v46

    sub-double v30, v30, v40

    mul-double v30, v30, v24

    mul-double v40, v34, v48

    mul-double v50, v38, v44

    sub-double v40, v40, v50

    mul-double v40, v40, v26

    sub-double v30, v30, v40

    mul-double v40, v34, v46

    mul-double v50, v36, v44

    sub-double v40, v40, v50

    mul-double v40, v40, v28

    add-double v30, v30, v40

    mul-double v30, v30, v22

    mul-double v40, v36, v48

    mul-double v50, v38, v46

    sub-double v40, v40, v50

    mul-double v40, v40, v32

    mul-double v50, v42, v48

    mul-double v56, v38, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v26

    sub-double v40, v40, v50

    mul-double v50, v42, v46

    mul-double v56, v36, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v28

    add-double v40, v40, v50

    mul-double v40, v40, v14

    sub-double v30, v30, v40

    mul-double v40, v34, v48

    mul-double v50, v38, v44

    sub-double v40, v40, v50

    mul-double v40, v40, v32

    mul-double v50, v42, v48

    mul-double v56, v38, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v24

    sub-double v40, v40, v50

    mul-double v50, v42, v44

    mul-double v56, v34, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v28

    add-double v40, v40, v50

    mul-double v40, v40, v16

    add-double v30, v30, v40

    mul-double v40, v34, v46

    mul-double v50, v36, v44

    sub-double v40, v40, v50

    mul-double v40, v40, v32

    mul-double v50, v42, v46

    mul-double v56, v36, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v24

    sub-double v40, v40, v50

    mul-double v50, v42, v44

    mul-double v56, v34, v52

    sub-double v50, v50, v56

    mul-double v50, v50, v26

    add-double v40, v40, v50

    mul-double v40, v40, v18

    sub-double v30, v30, v40

    mul-double v10, v10, v30

    add-double v10, v10, v20

    mul-double v10, v10, v54

    add-double/2addr v2, v10

    const/16 v10, 0xa

    aget-wide v10, v1, v10

    const/16 v20, 0x10

    aget-wide v20, v1, v20

    const/16 v30, 0x16

    aget-wide v30, v1, v30

    const/16 v40, 0x1c

    aget-wide v40, v1, v40

    const/16 v50, 0x22

    aget-wide v50, v1, v50

    const/16 v54, 0x5

    aget-wide v54, v1, v54

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v50

    mul-double v62, v40, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    mul-double v60, v34, v48

    mul-double v62, v38, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v34, v46

    mul-double v62, v36, v44

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v12, v12, v56

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v22

    mul-double v58, v38, v50

    mul-double v60, v40, v48

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    sub-double v58, v58, v60

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v16

    sub-double v56, v56, v58

    mul-double v58, v36, v50

    mul-double v60, v40, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v50

    mul-double v62, v40, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v30

    add-double v58, v58, v60

    mul-double v58, v58, v18

    add-double v56, v56, v58

    mul-double v58, v36, v48

    mul-double v60, v38, v46

    sub-double v58, v58, v60

    mul-double v58, v58, v32

    mul-double v60, v42, v48

    mul-double v62, v38, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v26

    sub-double v58, v58, v60

    mul-double v60, v42, v46

    mul-double v62, v36, v52

    sub-double v60, v60, v62

    mul-double v60, v60, v28

    add-double v58, v58, v60

    mul-double v58, v58, v20

    sub-double v56, v56, v58

    mul-double v4, v4, v56

    sub-double v4, v12, v4

    mul-double v12, v38, v50

    mul-double v56, v40, v48

    sub-double v12, v12, v56

    mul-double v12, v12, v24

    mul-double v56, v34, v50

    mul-double v58, v40, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v28

    sub-double v12, v12, v56

    mul-double v56, v34, v48

    mul-double v58, v38, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v30

    add-double v12, v12, v56

    mul-double v12, v12, v22

    mul-double v56, v38, v50

    mul-double v58, v40, v48

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v58, v42, v50

    mul-double v60, v40, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    sub-double v56, v56, v58

    mul-double v58, v42, v48

    mul-double v60, v38, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v14

    sub-double v12, v12, v56

    mul-double v56, v34, v50

    mul-double v58, v40, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v58, v42, v50

    mul-double v60, v40, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    sub-double v56, v56, v58

    mul-double v58, v42, v44

    mul-double v60, v34, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v30

    add-double v56, v56, v58

    mul-double v56, v56, v18

    add-double v12, v12, v56

    mul-double v56, v34, v48

    mul-double v58, v38, v44

    sub-double v56, v56, v58

    mul-double v56, v56, v32

    mul-double v58, v42, v48

    mul-double v60, v38, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v24

    sub-double v56, v56, v58

    mul-double v58, v42, v44

    mul-double v60, v34, v52

    sub-double v58, v58, v60

    mul-double v58, v58, v28

    add-double v56, v56, v58

    mul-double v56, v56, v20

    sub-double v12, v12, v56

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    mul-double v6, v36, v50

    mul-double v12, v40, v46

    sub-double/2addr v6, v12

    mul-double v6, v6, v24

    mul-double v12, v34, v50

    mul-double v56, v40, v44

    sub-double v12, v12, v56

    mul-double v12, v12, v26

    sub-double/2addr v6, v12

    mul-double v12, v34, v46

    mul-double v56, v36, v44

    sub-double v12, v12, v56

    mul-double v12, v12, v30

    add-double/2addr v6, v12

    mul-double v6, v6, v22

    mul-double v12, v36, v50

    mul-double v56, v40, v46

    sub-double v12, v12, v56

    mul-double v12, v12, v32

    mul-double v56, v42, v50

    mul-double v58, v40, v52

    sub-double v56, v56, v58

    mul-double v56, v56, v26

    sub-double v12, v12, v56

    mul-double v56, v42, v46

    mul-double v58, v36, v52

    sub-double v56, v56, v58

    mul-double v56, v56, v30

    add-double v12, v12, v56

    mul-double/2addr v12, v14

    sub-double/2addr v6, v12

    mul-double v12, v34, v50

    mul-double v56, v40, v44

    sub-double v12, v12, v56

    mul-double v12, v12, v32

    mul-double v50, v50, v42

    mul-double v40, v40, v52

    sub-double v40, v50, v40

    mul-double v40, v40, v24

    sub-double v12, v12, v40

    mul-double v40, v42, v44

    mul-double v50, v34, v52

    sub-double v40, v40, v50

    mul-double v30, v30, v40

    add-double v12, v12, v30

    mul-double v12, v12, v16

    add-double/2addr v6, v12

    mul-double v12, v34, v46

    mul-double v30, v36, v44

    sub-double v12, v12, v30

    mul-double v12, v12, v32

    mul-double v30, v42, v46

    mul-double v40, v36, v52

    sub-double v30, v30, v40

    mul-double v30, v30, v24

    sub-double v12, v12, v30

    mul-double v30, v42, v44

    mul-double v40, v34, v52

    sub-double v30, v30, v40

    mul-double v30, v30, v26

    add-double v12, v12, v30

    mul-double v12, v12, v20

    sub-double/2addr v6, v12

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double v6, v36, v48

    mul-double v8, v38, v46

    sub-double/2addr v6, v8

    mul-double v6, v6, v24

    mul-double v8, v34, v48

    mul-double v12, v38, v44

    sub-double/2addr v8, v12

    mul-double v8, v8, v26

    sub-double/2addr v6, v8

    mul-double v8, v34, v46

    mul-double v12, v36, v44

    sub-double/2addr v8, v12

    mul-double v8, v8, v28

    add-double/2addr v6, v8

    mul-double v6, v6, v22

    mul-double v8, v36, v48

    mul-double v12, v38, v46

    sub-double/2addr v8, v12

    mul-double v8, v8, v32

    mul-double v12, v42, v48

    mul-double v20, v38, v52

    sub-double v12, v12, v20

    mul-double v12, v12, v26

    sub-double/2addr v8, v12

    mul-double v12, v42, v46

    mul-double v20, v36, v52

    sub-double v12, v12, v20

    mul-double v12, v12, v28

    add-double/2addr v8, v12

    mul-double/2addr v8, v14

    sub-double/2addr v6, v8

    mul-double v8, v34, v48

    mul-double v12, v38, v44

    sub-double/2addr v8, v12

    mul-double v8, v8, v32

    mul-double v12, v42, v48

    mul-double v14, v38, v52

    sub-double/2addr v12, v14

    mul-double v12, v12, v24

    sub-double/2addr v8, v12

    mul-double v12, v42, v44

    mul-double v14, v34, v52

    sub-double/2addr v12, v14

    mul-double v12, v12, v28

    add-double/2addr v8, v12

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    mul-double v8, v34, v46

    mul-double v12, v36, v44

    sub-double/2addr v8, v12

    mul-double v8, v8, v32

    mul-double v12, v42, v46

    mul-double v14, v36, v52

    sub-double/2addr v12, v14

    mul-double v12, v12, v24

    sub-double/2addr v8, v12

    mul-double v12, v42, v44

    mul-double v14, v34, v52

    sub-double/2addr v12, v14

    mul-double v12, v12, v26

    add-double/2addr v8, v12

    mul-double v8, v8, v18

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    mul-double v4, v4, v54

    sub-double v1, v2, v4

    return-wide v1
.end method
