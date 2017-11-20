.class public Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;
.super Ljava/lang/Object;


# static fields
.field public static final MAX:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inv(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;)V
    .locals 9

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/ejml/data/DenseMatrix64F;->getNumElements()I

    move-result v5

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    aget-wide v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_5

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    div-double v0, v7, v2

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv2(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V

    :goto_2
    return-void

    :cond_1
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    div-double v0, v7, v2

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv3(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    div-double v0, v7, v2

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv4(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    div-double v0, v7, v2

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/alg/dense/misc/UnrolledInverseFromMinor;->inv5(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method public static inv2(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V
    .locals 13

    iget-object v0, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    mul-double/2addr v1, p2

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    mul-double/2addr v3, p2

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-double/2addr v5, p2

    const/4 v7, 0x3

    aget-wide v7, v0, v7

    mul-double/2addr v7, p2

    neg-double v5, v5

    neg-double v9, v3

    mul-double v11, v1, v7

    mul-double/2addr v3, v5

    add-double/2addr v3, v11

    div-double/2addr v3, p2

    iget-object v0, p1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v11, 0x0

    div-double/2addr v7, v3

    aput-wide v7, v0, v11

    const/4 v7, 0x1

    div-double v8, v9, v3

    aput-wide v8, v0, v7

    const/4 v7, 0x2

    div-double/2addr v5, v3

    aput-wide v5, v0, v7

    const/4 v5, 0x3

    div-double/2addr v1, v3

    aput-wide v1, v0, v5

    return-void
.end method

.method public static inv3(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    mul-double v3, v3, p2

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    mul-double v5, v5, p2

    const/4 v7, 0x2

    aget-wide v7, v2, v7

    mul-double v7, v7, p2

    const/4 v9, 0x3

    aget-wide v9, v2, v9

    mul-double v9, v9, p2

    const/4 v11, 0x4

    aget-wide v11, v2, v11

    mul-double v11, v11, p2

    const/4 v13, 0x5

    aget-wide v13, v2, v13

    mul-double v13, v13, p2

    const/4 v15, 0x6

    aget-wide v15, v2, v15

    mul-double v15, v15, p2

    const/16 v17, 0x7

    aget-wide v17, v2, v17

    mul-double v17, v17, p2

    const/16 v19, 0x8

    aget-wide v19, v2, v19

    mul-double v19, v19, p2

    mul-double v21, v11, v19

    mul-double v23, v13, v17

    sub-double v21, v21, v23

    mul-double v23, v9, v19

    mul-double v25, v13, v15

    sub-double v23, v23, v25

    move-wide/from16 v0, v23

    neg-double v0, v0

    move-wide/from16 v23, v0

    mul-double v25, v9, v17

    mul-double v27, v11, v15

    sub-double v25, v25, v27

    mul-double v27, v5, v19

    mul-double v29, v7, v17

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    neg-double v0, v0

    move-wide/from16 v27, v0

    mul-double v19, v19, v3

    mul-double v29, v7, v15

    sub-double v19, v19, v29

    mul-double v17, v17, v3

    mul-double/2addr v15, v5

    sub-double v15, v17, v15

    neg-double v15, v15

    mul-double v17, v5, v13

    mul-double v29, v7, v11

    sub-double v17, v17, v29

    mul-double/2addr v13, v3

    mul-double v29, v7, v9

    sub-double v13, v13, v29

    neg-double v13, v13

    mul-double/2addr v11, v3

    mul-double/2addr v9, v5

    sub-double v9, v11, v9

    mul-double v2, v3, v21

    mul-double v4, v5, v23

    add-double/2addr v2, v4

    mul-double v4, v7, v25

    add-double/2addr v2, v4

    div-double v2, v2, p2

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v5, 0x0

    div-double v6, v21, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    div-double v6, v27, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    div-double v6, v17, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x3

    div-double v6, v23, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x4

    div-double v6, v19, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    div-double v6, v13, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x6

    div-double v6, v25, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x7

    div-double v6, v15, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x8

    div-double v2, v9, v2

    aput-wide v2, v4, v5

    return-void
.end method

.method public static inv4(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V
    .locals 59

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    mul-double v3, v3, p2

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    mul-double v5, v5, p2

    const/4 v7, 0x2

    aget-wide v7, v2, v7

    mul-double v7, v7, p2

    const/4 v9, 0x3

    aget-wide v9, v2, v9

    mul-double v9, v9, p2

    const/4 v11, 0x4

    aget-wide v11, v2, v11

    mul-double v11, v11, p2

    const/4 v13, 0x5

    aget-wide v13, v2, v13

    mul-double v13, v13, p2

    const/4 v15, 0x6

    aget-wide v15, v2, v15

    mul-double v15, v15, p2

    const/16 v17, 0x7

    aget-wide v17, v2, v17

    mul-double v17, v17, p2

    const/16 v19, 0x8

    aget-wide v19, v2, v19

    mul-double v19, v19, p2

    const/16 v21, 0x9

    aget-wide v21, v2, v21

    mul-double v21, v21, p2

    const/16 v23, 0xa

    aget-wide v23, v2, v23

    mul-double v23, v23, p2

    const/16 v25, 0xb

    aget-wide v25, v2, v25

    mul-double v25, v25, p2

    const/16 v27, 0xc

    aget-wide v27, v2, v27

    mul-double v27, v27, p2

    const/16 v29, 0xd

    aget-wide v29, v2, v29

    mul-double v29, v29, p2

    const/16 v31, 0xe

    aget-wide v31, v2, v31

    mul-double v31, v31, p2

    const/16 v33, 0xf

    aget-wide v33, v2, v33

    mul-double v33, v33, p2

    mul-double v35, v23, v33

    mul-double v37, v25, v31

    sub-double v35, v35, v37

    mul-double v35, v35, v13

    mul-double v37, v21, v33

    mul-double v39, v25, v29

    sub-double v37, v37, v39

    mul-double v37, v37, v15

    sub-double v35, v35, v37

    mul-double v37, v21, v31

    mul-double v39, v23, v29

    sub-double v37, v37, v39

    mul-double v37, v37, v17

    add-double v35, v35, v37

    mul-double v37, v23, v33

    mul-double v39, v25, v31

    sub-double v37, v37, v39

    mul-double v37, v37, v11

    mul-double v39, v19, v33

    mul-double v41, v25, v27

    sub-double v39, v39, v41

    mul-double v39, v39, v15

    sub-double v37, v37, v39

    mul-double v39, v19, v31

    mul-double v41, v23, v27

    sub-double v39, v39, v41

    mul-double v39, v39, v17

    add-double v37, v37, v39

    move-wide/from16 v0, v37

    neg-double v0, v0

    move-wide/from16 v37, v0

    mul-double v39, v21, v33

    mul-double v41, v25, v29

    sub-double v39, v39, v41

    mul-double v39, v39, v11

    mul-double v41, v19, v33

    mul-double v43, v25, v27

    sub-double v41, v41, v43

    mul-double v41, v41, v13

    sub-double v39, v39, v41

    mul-double v41, v19, v29

    mul-double v43, v21, v27

    sub-double v41, v41, v43

    mul-double v41, v41, v17

    add-double v39, v39, v41

    mul-double v41, v21, v31

    mul-double v43, v23, v29

    sub-double v41, v41, v43

    mul-double v41, v41, v11

    mul-double v43, v19, v31

    mul-double v45, v23, v27

    sub-double v43, v43, v45

    mul-double v43, v43, v13

    sub-double v41, v41, v43

    mul-double v43, v19, v29

    mul-double v45, v21, v27

    sub-double v43, v43, v45

    mul-double v43, v43, v15

    add-double v41, v41, v43

    move-wide/from16 v0, v41

    neg-double v0, v0

    move-wide/from16 v41, v0

    mul-double v43, v23, v33

    mul-double v45, v25, v31

    sub-double v43, v43, v45

    mul-double v43, v43, v5

    mul-double v45, v21, v33

    mul-double v47, v25, v29

    sub-double v45, v45, v47

    mul-double v45, v45, v7

    sub-double v43, v43, v45

    mul-double v45, v21, v31

    mul-double v47, v23, v29

    sub-double v45, v45, v47

    mul-double v45, v45, v9

    add-double v43, v43, v45

    move-wide/from16 v0, v43

    neg-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v23, v33

    mul-double v47, v25, v31

    sub-double v45, v45, v47

    mul-double v45, v45, v3

    mul-double v47, v19, v33

    mul-double v49, v25, v27

    sub-double v47, v47, v49

    mul-double v47, v47, v7

    sub-double v45, v45, v47

    mul-double v47, v19, v31

    mul-double v49, v23, v27

    sub-double v47, v47, v49

    mul-double v47, v47, v9

    add-double v45, v45, v47

    mul-double v47, v21, v33

    mul-double v49, v25, v29

    sub-double v47, v47, v49

    mul-double v47, v47, v3

    mul-double v49, v19, v33

    mul-double v51, v25, v27

    sub-double v49, v49, v51

    mul-double v49, v49, v5

    sub-double v47, v47, v49

    mul-double v49, v19, v29

    mul-double v51, v21, v27

    sub-double v49, v49, v51

    mul-double v49, v49, v9

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    neg-double v0, v0

    move-wide/from16 v47, v0

    mul-double v49, v21, v31

    mul-double v51, v23, v29

    sub-double v49, v49, v51

    mul-double v49, v49, v3

    mul-double v51, v19, v31

    mul-double v53, v23, v27

    sub-double v51, v51, v53

    mul-double v51, v51, v5

    sub-double v49, v49, v51

    mul-double v51, v19, v29

    mul-double v53, v21, v27

    sub-double v51, v51, v53

    mul-double v51, v51, v7

    add-double v49, v49, v51

    mul-double v51, v15, v33

    mul-double v53, v17, v31

    sub-double v51, v51, v53

    mul-double v51, v51, v5

    mul-double v53, v13, v33

    mul-double v55, v17, v29

    sub-double v53, v53, v55

    mul-double v53, v53, v7

    sub-double v51, v51, v53

    mul-double v53, v13, v31

    mul-double v55, v15, v29

    sub-double v53, v53, v55

    mul-double v53, v53, v9

    add-double v51, v51, v53

    mul-double v53, v15, v33

    mul-double v55, v17, v31

    sub-double v53, v53, v55

    mul-double v53, v53, v3

    mul-double v55, v11, v33

    mul-double v57, v17, v27

    sub-double v55, v55, v57

    mul-double v55, v55, v7

    sub-double v53, v53, v55

    mul-double v55, v11, v31

    mul-double v57, v15, v27

    sub-double v55, v55, v57

    mul-double v55, v55, v9

    add-double v53, v53, v55

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    mul-double v55, v13, v33

    mul-double v57, v17, v29

    sub-double v55, v55, v57

    mul-double v55, v55, v3

    mul-double v33, v33, v11

    mul-double v57, v17, v27

    sub-double v33, v33, v57

    mul-double v33, v33, v5

    sub-double v33, v55, v33

    mul-double v55, v11, v29

    mul-double v57, v13, v27

    sub-double v55, v55, v57

    mul-double v55, v55, v9

    add-double v33, v33, v55

    mul-double v55, v13, v31

    mul-double v57, v15, v29

    sub-double v55, v55, v57

    mul-double v55, v55, v3

    mul-double v31, v31, v11

    mul-double v57, v15, v27

    sub-double v31, v31, v57

    mul-double v31, v31, v5

    sub-double v31, v55, v31

    mul-double v29, v29, v11

    mul-double v27, v27, v13

    sub-double v27, v29, v27

    mul-double v27, v27, v7

    add-double v27, v27, v31

    move-wide/from16 v0, v27

    neg-double v0, v0

    move-wide/from16 v27, v0

    mul-double v29, v15, v25

    mul-double v31, v17, v23

    sub-double v29, v29, v31

    mul-double v29, v29, v5

    mul-double v31, v13, v25

    mul-double v55, v17, v21

    sub-double v31, v31, v55

    mul-double v31, v31, v7

    sub-double v29, v29, v31

    mul-double v31, v13, v23

    mul-double v55, v15, v21

    sub-double v31, v31, v55

    mul-double v31, v31, v9

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    neg-double v0, v0

    move-wide/from16 v29, v0

    mul-double v31, v15, v25

    mul-double v55, v17, v23

    sub-double v31, v31, v55

    mul-double v31, v31, v3

    mul-double v55, v11, v25

    mul-double v57, v17, v19

    sub-double v55, v55, v57

    mul-double v55, v55, v7

    sub-double v31, v31, v55

    mul-double v55, v11, v23

    mul-double v57, v15, v19

    sub-double v55, v55, v57

    mul-double v55, v55, v9

    add-double v31, v31, v55

    mul-double v55, v13, v25

    mul-double v57, v17, v21

    sub-double v55, v55, v57

    mul-double v55, v55, v3

    mul-double v25, v25, v11

    mul-double v17, v17, v19

    sub-double v17, v25, v17

    mul-double v17, v17, v5

    sub-double v17, v55, v17

    mul-double v25, v11, v21

    mul-double v55, v13, v19

    sub-double v25, v25, v55

    mul-double v25, v25, v9

    add-double v17, v17, v25

    move-wide/from16 v0, v17

    neg-double v0, v0

    move-wide/from16 v17, v0

    mul-double v25, v13, v23

    mul-double v55, v15, v21

    sub-double v25, v25, v55

    mul-double v25, v25, v3

    mul-double v23, v23, v11

    mul-double v15, v15, v19

    sub-double v15, v23, v15

    mul-double/2addr v15, v5

    sub-double v15, v25, v15

    mul-double v11, v11, v21

    mul-double v13, v13, v19

    sub-double/2addr v11, v13

    mul-double/2addr v11, v7

    add-double/2addr v11, v15

    mul-double v2, v3, v35

    mul-double v4, v5, v37

    add-double/2addr v2, v4

    mul-double v4, v7, v39

    add-double/2addr v2, v4

    mul-double v4, v9, v41

    add-double/2addr v2, v4

    div-double v2, v2, p2

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v5, 0x0

    div-double v6, v35, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    div-double v6, v43, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    div-double v6, v51, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x3

    div-double v6, v29, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x4

    div-double v6, v37, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    div-double v6, v45, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x6

    div-double v6, v53, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x7

    div-double v6, v31, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x8

    div-double v6, v39, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x9

    div-double v6, v47, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xa

    div-double v6, v33, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xb

    div-double v6, v17, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xc

    div-double v6, v41, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xd

    div-double v6, v49, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xe

    div-double v6, v27, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xf

    div-double v2, v11, v2

    aput-wide v2, v4, v5

    return-void
.end method

.method public static inv5(Lorg/ejml/data/DenseMatrix64F;Lorg/ejml/data/DenseMatrix64F;D)V
    .locals 97

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    mul-double v3, v3, p2

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    mul-double v5, v5, p2

    const/4 v7, 0x2

    aget-wide v7, v2, v7

    mul-double v7, v7, p2

    const/4 v9, 0x3

    aget-wide v9, v2, v9

    mul-double v9, v9, p2

    const/4 v11, 0x4

    aget-wide v11, v2, v11

    mul-double v11, v11, p2

    const/4 v13, 0x5

    aget-wide v13, v2, v13

    mul-double v13, v13, p2

    const/4 v15, 0x6

    aget-wide v15, v2, v15

    mul-double v15, v15, p2

    const/16 v17, 0x7

    aget-wide v17, v2, v17

    mul-double v17, v17, p2

    const/16 v19, 0x8

    aget-wide v19, v2, v19

    mul-double v19, v19, p2

    const/16 v21, 0x9

    aget-wide v21, v2, v21

    mul-double v21, v21, p2

    const/16 v23, 0xa

    aget-wide v23, v2, v23

    mul-double v23, v23, p2

    const/16 v25, 0xb

    aget-wide v25, v2, v25

    mul-double v25, v25, p2

    const/16 v27, 0xc

    aget-wide v27, v2, v27

    mul-double v27, v27, p2

    const/16 v29, 0xd

    aget-wide v29, v2, v29

    mul-double v29, v29, p2

    const/16 v31, 0xe

    aget-wide v31, v2, v31

    mul-double v31, v31, p2

    const/16 v33, 0xf

    aget-wide v33, v2, v33

    mul-double v33, v33, p2

    const/16 v35, 0x10

    aget-wide v35, v2, v35

    mul-double v35, v35, p2

    const/16 v37, 0x11

    aget-wide v37, v2, v37

    mul-double v37, v37, p2

    const/16 v39, 0x12

    aget-wide v39, v2, v39

    mul-double v39, v39, p2

    const/16 v41, 0x13

    aget-wide v41, v2, v41

    mul-double v41, v41, p2

    const/16 v43, 0x14

    aget-wide v43, v2, v43

    mul-double v43, v43, p2

    const/16 v45, 0x15

    aget-wide v45, v2, v45

    mul-double v45, v45, p2

    const/16 v47, 0x16

    aget-wide v47, v2, v47

    mul-double v47, v47, p2

    const/16 v49, 0x17

    aget-wide v49, v2, v49

    mul-double v49, v49, p2

    const/16 v51, 0x18

    aget-wide v51, v2, v51

    mul-double v51, v51, p2

    mul-double v53, v39, v51

    mul-double v55, v41, v49

    sub-double v53, v53, v55

    mul-double v53, v53, v27

    mul-double v55, v37, v51

    mul-double v57, v41, v47

    sub-double v55, v55, v57

    mul-double v55, v55, v29

    sub-double v53, v53, v55

    mul-double v55, v37, v49

    mul-double v57, v39, v47

    sub-double v55, v55, v57

    mul-double v55, v55, v31

    add-double v53, v53, v55

    mul-double v53, v53, v15

    mul-double v55, v39, v51

    mul-double v57, v41, v49

    sub-double v55, v55, v57

    mul-double v55, v55, v25

    mul-double v57, v35, v51

    mul-double v59, v41, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v29

    sub-double v55, v55, v57

    mul-double v57, v35, v49

    mul-double v59, v39, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v31

    add-double v55, v55, v57

    mul-double v55, v55, v17

    sub-double v53, v53, v55

    mul-double v55, v37, v51

    mul-double v57, v41, v47

    sub-double v55, v55, v57

    mul-double v55, v55, v25

    mul-double v57, v35, v51

    mul-double v59, v41, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v27

    sub-double v55, v55, v57

    mul-double v57, v35, v47

    mul-double v59, v37, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v31

    add-double v55, v55, v57

    mul-double v55, v55, v19

    add-double v53, v53, v55

    mul-double v55, v37, v49

    mul-double v57, v39, v47

    sub-double v55, v55, v57

    mul-double v55, v55, v25

    mul-double v57, v35, v49

    mul-double v59, v39, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v27

    sub-double v55, v55, v57

    mul-double v57, v35, v47

    mul-double v59, v37, v45

    sub-double v57, v57, v59

    mul-double v57, v57, v29

    add-double v55, v55, v57

    mul-double v55, v55, v21

    sub-double v53, v53, v55

    mul-double v55, v39, v51

    mul-double v57, v41, v49

    sub-double v55, v55, v57

    mul-double v55, v55, v27

    mul-double v57, v37, v51

    mul-double v59, v41, v47

    sub-double v57, v57, v59

    mul-double v57, v57, v29

    sub-double v55, v55, v57

    mul-double v57, v37, v49

    mul-double v59, v39, v47

    sub-double v57, v57, v59

    mul-double v57, v57, v31

    add-double v55, v55, v57

    mul-double v55, v55, v13

    mul-double v57, v39, v51

    mul-double v59, v41, v49

    sub-double v57, v57, v59

    mul-double v57, v57, v23

    mul-double v59, v33, v51

    mul-double v61, v41, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v29

    sub-double v57, v57, v59

    mul-double v59, v33, v49

    mul-double v61, v39, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v31

    add-double v57, v57, v59

    mul-double v57, v57, v17

    sub-double v55, v55, v57

    mul-double v57, v37, v51

    mul-double v59, v41, v47

    sub-double v57, v57, v59

    mul-double v57, v57, v23

    mul-double v59, v33, v51

    mul-double v61, v41, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v27

    sub-double v57, v57, v59

    mul-double v59, v33, v47

    mul-double v61, v37, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v31

    add-double v57, v57, v59

    mul-double v57, v57, v19

    add-double v55, v55, v57

    mul-double v57, v37, v49

    mul-double v59, v39, v47

    sub-double v57, v57, v59

    mul-double v57, v57, v23

    mul-double v59, v33, v49

    mul-double v61, v39, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v27

    sub-double v57, v57, v59

    mul-double v59, v33, v47

    mul-double v61, v37, v43

    sub-double v59, v59, v61

    mul-double v59, v59, v29

    add-double v57, v57, v59

    mul-double v57, v57, v21

    sub-double v55, v55, v57

    move-wide/from16 v0, v55

    neg-double v0, v0

    move-wide/from16 v55, v0

    mul-double v57, v39, v51

    mul-double v59, v41, v49

    sub-double v57, v57, v59

    mul-double v57, v57, v25

    mul-double v59, v35, v51

    mul-double v61, v41, v45

    sub-double v59, v59, v61

    mul-double v59, v59, v29

    sub-double v57, v57, v59

    mul-double v59, v35, v49

    mul-double v61, v39, v45

    sub-double v59, v59, v61

    mul-double v59, v59, v31

    add-double v57, v57, v59

    mul-double v57, v57, v13

    mul-double v59, v39, v51

    mul-double v61, v41, v49

    sub-double v59, v59, v61

    mul-double v59, v59, v23

    mul-double v61, v33, v51

    mul-double v63, v41, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v29

    sub-double v59, v59, v61

    mul-double v61, v33, v49

    mul-double v63, v39, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v31

    add-double v59, v59, v61

    mul-double v59, v59, v15

    sub-double v57, v57, v59

    mul-double v59, v35, v51

    mul-double v61, v41, v45

    sub-double v59, v59, v61

    mul-double v59, v59, v23

    mul-double v61, v33, v51

    mul-double v63, v41, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v25

    sub-double v59, v59, v61

    mul-double v61, v33, v45

    mul-double v63, v35, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v31

    add-double v59, v59, v61

    mul-double v59, v59, v19

    add-double v57, v57, v59

    mul-double v59, v35, v49

    mul-double v61, v39, v45

    sub-double v59, v59, v61

    mul-double v59, v59, v23

    mul-double v61, v33, v49

    mul-double v63, v39, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v25

    sub-double v59, v59, v61

    mul-double v61, v33, v45

    mul-double v63, v35, v43

    sub-double v61, v61, v63

    mul-double v61, v61, v29

    add-double v59, v59, v61

    mul-double v59, v59, v21

    sub-double v57, v57, v59

    mul-double v59, v37, v51

    mul-double v61, v41, v47

    sub-double v59, v59, v61

    mul-double v59, v59, v25

    mul-double v61, v35, v51

    mul-double v63, v41, v45

    sub-double v61, v61, v63

    mul-double v61, v61, v27

    sub-double v59, v59, v61

    mul-double v61, v35, v47

    mul-double v63, v37, v45

    sub-double v61, v61, v63

    mul-double v61, v61, v31

    add-double v59, v59, v61

    mul-double v59, v59, v13

    mul-double v61, v37, v51

    mul-double v63, v41, v47

    sub-double v61, v61, v63

    mul-double v61, v61, v23

    mul-double v63, v33, v51

    mul-double v65, v41, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v27

    sub-double v61, v61, v63

    mul-double v63, v33, v47

    mul-double v65, v37, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v31

    add-double v61, v61, v63

    mul-double v61, v61, v15

    sub-double v59, v59, v61

    mul-double v61, v35, v51

    mul-double v63, v41, v45

    sub-double v61, v61, v63

    mul-double v61, v61, v23

    mul-double v63, v33, v51

    mul-double v65, v41, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v25

    sub-double v61, v61, v63

    mul-double v63, v33, v45

    mul-double v65, v35, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v31

    add-double v61, v61, v63

    mul-double v61, v61, v17

    add-double v59, v59, v61

    mul-double v61, v35, v47

    mul-double v63, v37, v45

    sub-double v61, v61, v63

    mul-double v61, v61, v23

    mul-double v63, v33, v47

    mul-double v65, v37, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v25

    sub-double v61, v61, v63

    mul-double v63, v33, v45

    mul-double v65, v35, v43

    sub-double v63, v63, v65

    mul-double v63, v63, v27

    add-double v61, v61, v63

    mul-double v61, v61, v21

    sub-double v59, v59, v61

    move-wide/from16 v0, v59

    neg-double v0, v0

    move-wide/from16 v59, v0

    mul-double v61, v37, v49

    mul-double v63, v39, v47

    sub-double v61, v61, v63

    mul-double v61, v61, v25

    mul-double v63, v35, v49

    mul-double v65, v39, v45

    sub-double v63, v63, v65

    mul-double v63, v63, v27

    sub-double v61, v61, v63

    mul-double v63, v35, v47

    mul-double v65, v37, v45

    sub-double v63, v63, v65

    mul-double v63, v63, v29

    add-double v61, v61, v63

    mul-double v61, v61, v13

    mul-double v63, v37, v49

    mul-double v65, v39, v47

    sub-double v63, v63, v65

    mul-double v63, v63, v23

    mul-double v65, v33, v49

    mul-double v67, v39, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v27

    sub-double v63, v63, v65

    mul-double v65, v33, v47

    mul-double v67, v37, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v29

    add-double v63, v63, v65

    mul-double v63, v63, v15

    sub-double v61, v61, v63

    mul-double v63, v35, v49

    mul-double v65, v39, v45

    sub-double v63, v63, v65

    mul-double v63, v63, v23

    mul-double v65, v33, v49

    mul-double v67, v39, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v25

    sub-double v63, v63, v65

    mul-double v65, v33, v45

    mul-double v67, v35, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v29

    add-double v63, v63, v65

    mul-double v63, v63, v17

    add-double v61, v61, v63

    mul-double v63, v35, v47

    mul-double v65, v37, v45

    sub-double v63, v63, v65

    mul-double v63, v63, v23

    mul-double v65, v33, v47

    mul-double v67, v37, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v25

    sub-double v63, v63, v65

    mul-double v65, v33, v45

    mul-double v67, v35, v43

    sub-double v65, v65, v67

    mul-double v65, v65, v27

    add-double v63, v63, v65

    mul-double v63, v63, v19

    sub-double v61, v61, v63

    mul-double v63, v39, v51

    mul-double v65, v41, v49

    sub-double v63, v63, v65

    mul-double v63, v63, v27

    mul-double v65, v37, v51

    mul-double v67, v41, v47

    sub-double v65, v65, v67

    mul-double v65, v65, v29

    sub-double v63, v63, v65

    mul-double v65, v37, v49

    mul-double v67, v39, v47

    sub-double v65, v65, v67

    mul-double v65, v65, v31

    add-double v63, v63, v65

    mul-double v63, v63, v5

    mul-double v65, v39, v51

    mul-double v67, v41, v49

    sub-double v65, v65, v67

    mul-double v65, v65, v25

    mul-double v67, v35, v51

    mul-double v69, v41, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v29

    sub-double v65, v65, v67

    mul-double v67, v35, v49

    mul-double v69, v39, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v31

    add-double v65, v65, v67

    mul-double v65, v65, v7

    sub-double v63, v63, v65

    mul-double v65, v37, v51

    mul-double v67, v41, v47

    sub-double v65, v65, v67

    mul-double v65, v65, v25

    mul-double v67, v35, v51

    mul-double v69, v41, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v27

    sub-double v65, v65, v67

    mul-double v67, v35, v47

    mul-double v69, v37, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v31

    add-double v65, v65, v67

    mul-double v65, v65, v9

    add-double v63, v63, v65

    mul-double v65, v37, v49

    mul-double v67, v39, v47

    sub-double v65, v65, v67

    mul-double v65, v65, v25

    mul-double v67, v35, v49

    mul-double v69, v39, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v27

    sub-double v65, v65, v67

    mul-double v67, v35, v47

    mul-double v69, v37, v45

    sub-double v67, v67, v69

    mul-double v67, v67, v29

    add-double v65, v65, v67

    mul-double v65, v65, v11

    sub-double v63, v63, v65

    move-wide/from16 v0, v63

    neg-double v0, v0

    move-wide/from16 v63, v0

    mul-double v65, v39, v51

    mul-double v67, v41, v49

    sub-double v65, v65, v67

    mul-double v65, v65, v27

    mul-double v67, v37, v51

    mul-double v69, v41, v47

    sub-double v67, v67, v69

    mul-double v67, v67, v29

    sub-double v65, v65, v67

    mul-double v67, v37, v49

    mul-double v69, v39, v47

    sub-double v67, v67, v69

    mul-double v67, v67, v31

    add-double v65, v65, v67

    mul-double v65, v65, v3

    mul-double v67, v39, v51

    mul-double v69, v41, v49

    sub-double v67, v67, v69

    mul-double v67, v67, v23

    mul-double v69, v33, v51

    mul-double v71, v41, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v29

    sub-double v67, v67, v69

    mul-double v69, v33, v49

    mul-double v71, v39, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v31

    add-double v67, v67, v69

    mul-double v67, v67, v7

    sub-double v65, v65, v67

    mul-double v67, v37, v51

    mul-double v69, v41, v47

    sub-double v67, v67, v69

    mul-double v67, v67, v23

    mul-double v69, v33, v51

    mul-double v71, v41, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v27

    sub-double v67, v67, v69

    mul-double v69, v33, v47

    mul-double v71, v37, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v31

    add-double v67, v67, v69

    mul-double v67, v67, v9

    add-double v65, v65, v67

    mul-double v67, v37, v49

    mul-double v69, v39, v47

    sub-double v67, v67, v69

    mul-double v67, v67, v23

    mul-double v69, v33, v49

    mul-double v71, v39, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v27

    sub-double v67, v67, v69

    mul-double v69, v33, v47

    mul-double v71, v37, v43

    sub-double v69, v69, v71

    mul-double v69, v69, v29

    add-double v67, v67, v69

    mul-double v67, v67, v11

    sub-double v65, v65, v67

    mul-double v67, v39, v51

    mul-double v69, v41, v49

    sub-double v67, v67, v69

    mul-double v67, v67, v25

    mul-double v69, v35, v51

    mul-double v71, v41, v45

    sub-double v69, v69, v71

    mul-double v69, v69, v29

    sub-double v67, v67, v69

    mul-double v69, v35, v49

    mul-double v71, v39, v45

    sub-double v69, v69, v71

    mul-double v69, v69, v31

    add-double v67, v67, v69

    mul-double v67, v67, v3

    mul-double v69, v39, v51

    mul-double v71, v41, v49

    sub-double v69, v69, v71

    mul-double v69, v69, v23

    mul-double v71, v33, v51

    mul-double v73, v41, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v29

    sub-double v69, v69, v71

    mul-double v71, v33, v49

    mul-double v73, v39, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v31

    add-double v69, v69, v71

    mul-double v69, v69, v5

    sub-double v67, v67, v69

    mul-double v69, v35, v51

    mul-double v71, v41, v45

    sub-double v69, v69, v71

    mul-double v69, v69, v23

    mul-double v71, v33, v51

    mul-double v73, v41, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v25

    sub-double v69, v69, v71

    mul-double v71, v33, v45

    mul-double v73, v35, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v31

    add-double v69, v69, v71

    mul-double v69, v69, v9

    add-double v67, v67, v69

    mul-double v69, v35, v49

    mul-double v71, v39, v45

    sub-double v69, v69, v71

    mul-double v69, v69, v23

    mul-double v71, v33, v49

    mul-double v73, v39, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v25

    sub-double v69, v69, v71

    mul-double v71, v33, v45

    mul-double v73, v35, v43

    sub-double v71, v71, v73

    mul-double v71, v71, v29

    add-double v69, v69, v71

    mul-double v69, v69, v11

    sub-double v67, v67, v69

    move-wide/from16 v0, v67

    neg-double v0, v0

    move-wide/from16 v67, v0

    mul-double v69, v37, v51

    mul-double v71, v41, v47

    sub-double v69, v69, v71

    mul-double v69, v69, v25

    mul-double v71, v35, v51

    mul-double v73, v41, v45

    sub-double v71, v71, v73

    mul-double v71, v71, v27

    sub-double v69, v69, v71

    mul-double v71, v35, v47

    mul-double v73, v37, v45

    sub-double v71, v71, v73

    mul-double v71, v71, v31

    add-double v69, v69, v71

    mul-double v69, v69, v3

    mul-double v71, v37, v51

    mul-double v73, v41, v47

    sub-double v71, v71, v73

    mul-double v71, v71, v23

    mul-double v73, v33, v51

    mul-double v75, v41, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v27

    sub-double v71, v71, v73

    mul-double v73, v33, v47

    mul-double v75, v37, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v31

    add-double v71, v71, v73

    mul-double v71, v71, v5

    sub-double v69, v69, v71

    mul-double v71, v35, v51

    mul-double v73, v41, v45

    sub-double v71, v71, v73

    mul-double v71, v71, v23

    mul-double v73, v33, v51

    mul-double v75, v41, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v25

    sub-double v71, v71, v73

    mul-double v73, v33, v45

    mul-double v75, v35, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v31

    add-double v71, v71, v73

    mul-double v71, v71, v7

    add-double v69, v69, v71

    mul-double v71, v35, v47

    mul-double v73, v37, v45

    sub-double v71, v71, v73

    mul-double v71, v71, v23

    mul-double v73, v33, v47

    mul-double v75, v37, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v25

    sub-double v71, v71, v73

    mul-double v73, v33, v45

    mul-double v75, v35, v43

    sub-double v73, v73, v75

    mul-double v73, v73, v27

    add-double v71, v71, v73

    mul-double v71, v71, v11

    sub-double v69, v69, v71

    mul-double v71, v37, v49

    mul-double v73, v39, v47

    sub-double v71, v71, v73

    mul-double v71, v71, v25

    mul-double v73, v35, v49

    mul-double v75, v39, v45

    sub-double v73, v73, v75

    mul-double v73, v73, v27

    sub-double v71, v71, v73

    mul-double v73, v35, v47

    mul-double v75, v37, v45

    sub-double v73, v73, v75

    mul-double v73, v73, v29

    add-double v71, v71, v73

    mul-double v71, v71, v3

    mul-double v73, v37, v49

    mul-double v75, v39, v47

    sub-double v73, v73, v75

    mul-double v73, v73, v23

    mul-double v75, v33, v49

    mul-double v77, v39, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v27

    sub-double v73, v73, v75

    mul-double v75, v33, v47

    mul-double v77, v37, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v29

    add-double v73, v73, v75

    mul-double v73, v73, v5

    sub-double v71, v71, v73

    mul-double v73, v35, v49

    mul-double v75, v39, v45

    sub-double v73, v73, v75

    mul-double v73, v73, v23

    mul-double v75, v33, v49

    mul-double v77, v39, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v25

    sub-double v73, v73, v75

    mul-double v75, v33, v45

    mul-double v77, v35, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v29

    add-double v73, v73, v75

    mul-double v73, v73, v7

    add-double v71, v71, v73

    mul-double v73, v35, v47

    mul-double v75, v37, v45

    sub-double v73, v73, v75

    mul-double v73, v73, v23

    mul-double v75, v33, v47

    mul-double v77, v37, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v25

    sub-double v73, v73, v75

    mul-double v75, v33, v45

    mul-double v77, v35, v43

    sub-double v75, v75, v77

    mul-double v75, v75, v27

    add-double v73, v73, v75

    mul-double v73, v73, v9

    sub-double v71, v71, v73

    move-wide/from16 v0, v71

    neg-double v0, v0

    move-wide/from16 v71, v0

    mul-double v73, v39, v51

    mul-double v75, v41, v49

    sub-double v73, v73, v75

    mul-double v73, v73, v17

    mul-double v75, v37, v51

    mul-double v77, v41, v47

    sub-double v75, v75, v77

    mul-double v75, v75, v19

    sub-double v73, v73, v75

    mul-double v75, v37, v49

    mul-double v77, v39, v47

    sub-double v75, v75, v77

    mul-double v75, v75, v21

    add-double v73, v73, v75

    mul-double v73, v73, v5

    mul-double v75, v39, v51

    mul-double v77, v41, v49

    sub-double v75, v75, v77

    mul-double v75, v75, v15

    mul-double v77, v35, v51

    mul-double v79, v41, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v19

    sub-double v75, v75, v77

    mul-double v77, v35, v49

    mul-double v79, v39, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v21

    add-double v75, v75, v77

    mul-double v75, v75, v7

    sub-double v73, v73, v75

    mul-double v75, v37, v51

    mul-double v77, v41, v47

    sub-double v75, v75, v77

    mul-double v75, v75, v15

    mul-double v77, v35, v51

    mul-double v79, v41, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v17

    sub-double v75, v75, v77

    mul-double v77, v35, v47

    mul-double v79, v37, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v21

    add-double v75, v75, v77

    mul-double v75, v75, v9

    add-double v73, v73, v75

    mul-double v75, v37, v49

    mul-double v77, v39, v47

    sub-double v75, v75, v77

    mul-double v75, v75, v15

    mul-double v77, v35, v49

    mul-double v79, v39, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v17

    sub-double v75, v75, v77

    mul-double v77, v35, v47

    mul-double v79, v37, v45

    sub-double v77, v77, v79

    mul-double v77, v77, v19

    add-double v75, v75, v77

    mul-double v75, v75, v11

    sub-double v73, v73, v75

    mul-double v75, v39, v51

    mul-double v77, v41, v49

    sub-double v75, v75, v77

    mul-double v75, v75, v17

    mul-double v77, v37, v51

    mul-double v79, v41, v47

    sub-double v77, v77, v79

    mul-double v77, v77, v19

    sub-double v75, v75, v77

    mul-double v77, v37, v49

    mul-double v79, v39, v47

    sub-double v77, v77, v79

    mul-double v77, v77, v21

    add-double v75, v75, v77

    mul-double v75, v75, v3

    mul-double v77, v39, v51

    mul-double v79, v41, v49

    sub-double v77, v77, v79

    mul-double v77, v77, v13

    mul-double v79, v33, v51

    mul-double v81, v41, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v19

    sub-double v77, v77, v79

    mul-double v79, v33, v49

    mul-double v81, v39, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v21

    add-double v77, v77, v79

    mul-double v77, v77, v7

    sub-double v75, v75, v77

    mul-double v77, v37, v51

    mul-double v79, v41, v47

    sub-double v77, v77, v79

    mul-double v77, v77, v13

    mul-double v79, v33, v51

    mul-double v81, v41, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v17

    sub-double v77, v77, v79

    mul-double v79, v33, v47

    mul-double v81, v37, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v21

    add-double v77, v77, v79

    mul-double v77, v77, v9

    add-double v75, v75, v77

    mul-double v77, v37, v49

    mul-double v79, v39, v47

    sub-double v77, v77, v79

    mul-double v77, v77, v13

    mul-double v79, v33, v49

    mul-double v81, v39, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v17

    sub-double v77, v77, v79

    mul-double v79, v33, v47

    mul-double v81, v37, v43

    sub-double v79, v79, v81

    mul-double v79, v79, v19

    add-double v77, v77, v79

    mul-double v77, v77, v11

    sub-double v75, v75, v77

    move-wide/from16 v0, v75

    neg-double v0, v0

    move-wide/from16 v75, v0

    mul-double v77, v39, v51

    mul-double v79, v41, v49

    sub-double v77, v77, v79

    mul-double v77, v77, v15

    mul-double v79, v35, v51

    mul-double v81, v41, v45

    sub-double v79, v79, v81

    mul-double v79, v79, v19

    sub-double v77, v77, v79

    mul-double v79, v35, v49

    mul-double v81, v39, v45

    sub-double v79, v79, v81

    mul-double v79, v79, v21

    add-double v77, v77, v79

    mul-double v77, v77, v3

    mul-double v79, v39, v51

    mul-double v81, v41, v49

    sub-double v79, v79, v81

    mul-double v79, v79, v13

    mul-double v81, v33, v51

    mul-double v83, v41, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v19

    sub-double v79, v79, v81

    mul-double v81, v33, v49

    mul-double v83, v39, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v21

    add-double v79, v79, v81

    mul-double v79, v79, v5

    sub-double v77, v77, v79

    mul-double v79, v35, v51

    mul-double v81, v41, v45

    sub-double v79, v79, v81

    mul-double v79, v79, v13

    mul-double v81, v33, v51

    mul-double v83, v41, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v15

    sub-double v79, v79, v81

    mul-double v81, v33, v45

    mul-double v83, v35, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v21

    add-double v79, v79, v81

    mul-double v79, v79, v9

    add-double v77, v77, v79

    mul-double v79, v35, v49

    mul-double v81, v39, v45

    sub-double v79, v79, v81

    mul-double v79, v79, v13

    mul-double v81, v33, v49

    mul-double v83, v39, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v15

    sub-double v79, v79, v81

    mul-double v81, v33, v45

    mul-double v83, v35, v43

    sub-double v81, v81, v83

    mul-double v81, v81, v19

    add-double v79, v79, v81

    mul-double v79, v79, v11

    sub-double v77, v77, v79

    mul-double v79, v37, v51

    mul-double v81, v41, v47

    sub-double v79, v79, v81

    mul-double v79, v79, v15

    mul-double v81, v35, v51

    mul-double v83, v41, v45

    sub-double v81, v81, v83

    mul-double v81, v81, v17

    sub-double v79, v79, v81

    mul-double v81, v35, v47

    mul-double v83, v37, v45

    sub-double v81, v81, v83

    mul-double v81, v81, v21

    add-double v79, v79, v81

    mul-double v79, v79, v3

    mul-double v81, v37, v51

    mul-double v83, v41, v47

    sub-double v81, v81, v83

    mul-double v81, v81, v13

    mul-double v83, v33, v51

    mul-double v85, v41, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v17

    sub-double v81, v81, v83

    mul-double v83, v33, v47

    mul-double v85, v37, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v21

    add-double v81, v81, v83

    mul-double v81, v81, v5

    sub-double v79, v79, v81

    mul-double v81, v35, v51

    mul-double v83, v41, v45

    sub-double v81, v81, v83

    mul-double v81, v81, v13

    mul-double v83, v33, v51

    mul-double v85, v41, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v15

    sub-double v81, v81, v83

    mul-double v83, v33, v45

    mul-double v85, v35, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v21

    add-double v81, v81, v83

    mul-double v81, v81, v7

    add-double v79, v79, v81

    mul-double v81, v35, v47

    mul-double v83, v37, v45

    sub-double v81, v81, v83

    mul-double v81, v81, v13

    mul-double v83, v33, v47

    mul-double v85, v37, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v15

    sub-double v81, v81, v83

    mul-double v83, v33, v45

    mul-double v85, v35, v43

    sub-double v83, v83, v85

    mul-double v83, v83, v17

    add-double v81, v81, v83

    mul-double v81, v81, v11

    sub-double v79, v79, v81

    move-wide/from16 v0, v79

    neg-double v0, v0

    move-wide/from16 v79, v0

    mul-double v81, v37, v49

    mul-double v83, v39, v47

    sub-double v81, v81, v83

    mul-double v81, v81, v15

    mul-double v83, v35, v49

    mul-double v85, v39, v45

    sub-double v83, v83, v85

    mul-double v83, v83, v17

    sub-double v81, v81, v83

    mul-double v83, v35, v47

    mul-double v85, v37, v45

    sub-double v83, v83, v85

    mul-double v83, v83, v19

    add-double v81, v81, v83

    mul-double v81, v81, v3

    mul-double v83, v37, v49

    mul-double v85, v39, v47

    sub-double v83, v83, v85

    mul-double v83, v83, v13

    mul-double v85, v33, v49

    mul-double v87, v39, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v17

    sub-double v83, v83, v85

    mul-double v85, v33, v47

    mul-double v87, v37, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v19

    add-double v83, v83, v85

    mul-double v83, v83, v5

    sub-double v81, v81, v83

    mul-double v83, v35, v49

    mul-double v85, v39, v45

    sub-double v83, v83, v85

    mul-double v83, v83, v13

    mul-double v85, v33, v49

    mul-double v87, v39, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v15

    sub-double v83, v83, v85

    mul-double v85, v33, v45

    mul-double v87, v35, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v19

    add-double v83, v83, v85

    mul-double v83, v83, v7

    add-double v81, v81, v83

    mul-double v83, v35, v47

    mul-double v85, v37, v45

    sub-double v83, v83, v85

    mul-double v83, v83, v13

    mul-double v85, v33, v47

    mul-double v87, v37, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v15

    sub-double v83, v83, v85

    mul-double v85, v33, v45

    mul-double v87, v35, v43

    sub-double v85, v85, v87

    mul-double v85, v85, v17

    add-double v83, v83, v85

    mul-double v83, v83, v9

    sub-double v81, v81, v83

    mul-double v83, v29, v51

    mul-double v85, v31, v49

    sub-double v83, v83, v85

    mul-double v83, v83, v17

    mul-double v85, v27, v51

    mul-double v87, v31, v47

    sub-double v85, v85, v87

    mul-double v85, v85, v19

    sub-double v83, v83, v85

    mul-double v85, v27, v49

    mul-double v87, v29, v47

    sub-double v85, v85, v87

    mul-double v85, v85, v21

    add-double v83, v83, v85

    mul-double v83, v83, v5

    mul-double v85, v29, v51

    mul-double v87, v31, v49

    sub-double v85, v85, v87

    mul-double v85, v85, v15

    mul-double v87, v25, v51

    mul-double v89, v31, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v19

    sub-double v85, v85, v87

    mul-double v87, v25, v49

    mul-double v89, v29, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v21

    add-double v85, v85, v87

    mul-double v85, v85, v7

    sub-double v83, v83, v85

    mul-double v85, v27, v51

    mul-double v87, v31, v47

    sub-double v85, v85, v87

    mul-double v85, v85, v15

    mul-double v87, v25, v51

    mul-double v89, v31, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v17

    sub-double v85, v85, v87

    mul-double v87, v25, v47

    mul-double v89, v27, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v21

    add-double v85, v85, v87

    mul-double v85, v85, v9

    add-double v83, v83, v85

    mul-double v85, v27, v49

    mul-double v87, v29, v47

    sub-double v85, v85, v87

    mul-double v85, v85, v15

    mul-double v87, v25, v49

    mul-double v89, v29, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v17

    sub-double v85, v85, v87

    mul-double v87, v25, v47

    mul-double v89, v27, v45

    sub-double v87, v87, v89

    mul-double v87, v87, v19

    add-double v85, v85, v87

    mul-double v85, v85, v11

    sub-double v83, v83, v85

    move-wide/from16 v0, v83

    neg-double v0, v0

    move-wide/from16 v83, v0

    mul-double v85, v29, v51

    mul-double v87, v31, v49

    sub-double v85, v85, v87

    mul-double v85, v85, v17

    mul-double v87, v27, v51

    mul-double v89, v31, v47

    sub-double v87, v87, v89

    mul-double v87, v87, v19

    sub-double v85, v85, v87

    mul-double v87, v27, v49

    mul-double v89, v29, v47

    sub-double v87, v87, v89

    mul-double v87, v87, v21

    add-double v85, v85, v87

    mul-double v85, v85, v3

    mul-double v87, v29, v51

    mul-double v89, v31, v49

    sub-double v87, v87, v89

    mul-double v87, v87, v13

    mul-double v89, v23, v51

    mul-double v91, v31, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    sub-double v87, v87, v89

    mul-double v89, v23, v49

    mul-double v91, v29, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v87, v87, v89

    mul-double v87, v87, v7

    sub-double v85, v85, v87

    mul-double v87, v27, v51

    mul-double v89, v31, v47

    sub-double v87, v87, v89

    mul-double v87, v87, v13

    mul-double v89, v23, v51

    mul-double v91, v31, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v17

    sub-double v87, v87, v89

    mul-double v89, v23, v47

    mul-double v91, v27, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v87, v87, v89

    mul-double v87, v87, v9

    add-double v85, v85, v87

    mul-double v87, v27, v49

    mul-double v89, v29, v47

    sub-double v87, v87, v89

    mul-double v87, v87, v13

    mul-double v89, v23, v49

    mul-double v91, v29, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v17

    sub-double v87, v87, v89

    mul-double v89, v23, v47

    mul-double v91, v27, v43

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    add-double v87, v87, v89

    mul-double v87, v87, v11

    sub-double v85, v85, v87

    mul-double v87, v29, v51

    mul-double v89, v31, v49

    sub-double v87, v87, v89

    mul-double v87, v87, v15

    mul-double v89, v25, v51

    mul-double v91, v31, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    sub-double v87, v87, v89

    mul-double v89, v25, v49

    mul-double v91, v29, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v87, v87, v89

    mul-double v87, v87, v3

    mul-double v89, v29, v51

    mul-double v91, v31, v49

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v51

    mul-double v93, v31, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    sub-double v89, v89, v91

    mul-double v91, v23, v49

    mul-double v93, v29, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v5

    sub-double v87, v87, v89

    mul-double v89, v25, v51

    mul-double v91, v31, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v51

    mul-double v93, v31, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v15

    sub-double v89, v89, v91

    mul-double v91, v23, v45

    mul-double v93, v25, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v9

    add-double v87, v87, v89

    mul-double v89, v25, v49

    mul-double v91, v29, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v49

    mul-double v93, v29, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v15

    sub-double v89, v89, v91

    mul-double v91, v23, v45

    mul-double v93, v25, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    add-double v89, v89, v91

    mul-double v89, v89, v11

    sub-double v87, v87, v89

    move-wide/from16 v0, v87

    neg-double v0, v0

    move-wide/from16 v87, v0

    mul-double v89, v27, v51

    mul-double v91, v31, v47

    sub-double v89, v89, v91

    mul-double v89, v89, v15

    mul-double v91, v25, v51

    mul-double v93, v31, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v17

    sub-double v89, v89, v91

    mul-double v91, v25, v47

    mul-double v93, v27, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v3

    mul-double v91, v27, v51

    mul-double v93, v31, v47

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v93, v23, v51

    mul-double v95, v31, v43

    sub-double v93, v93, v95

    mul-double v93, v93, v17

    sub-double v91, v91, v93

    mul-double v93, v23, v47

    mul-double v95, v27, v43

    sub-double v93, v93, v95

    mul-double v93, v93, v21

    add-double v91, v91, v93

    mul-double v91, v91, v5

    sub-double v89, v89, v91

    mul-double v91, v25, v51

    mul-double v93, v31, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v51, v51, v23

    mul-double v93, v31, v43

    sub-double v51, v51, v93

    mul-double v51, v51, v15

    sub-double v51, v91, v51

    mul-double v91, v23, v45

    mul-double v93, v25, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v51, v51, v91

    mul-double v51, v51, v7

    add-double v51, v51, v89

    mul-double v89, v25, v47

    mul-double v91, v27, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v47

    mul-double v93, v27, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v15

    sub-double v89, v89, v91

    mul-double v91, v23, v45

    mul-double v93, v25, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v17

    add-double v89, v89, v91

    mul-double v89, v89, v11

    sub-double v51, v51, v89

    mul-double v89, v27, v49

    mul-double v91, v29, v47

    sub-double v89, v89, v91

    mul-double v89, v89, v15

    mul-double v91, v25, v49

    mul-double v93, v29, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v17

    sub-double v89, v89, v91

    mul-double v91, v25, v47

    mul-double v93, v27, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    add-double v89, v89, v91

    mul-double v89, v89, v3

    mul-double v91, v27, v49

    mul-double v93, v29, v47

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v93, v23, v49

    mul-double v95, v29, v43

    sub-double v93, v93, v95

    mul-double v93, v93, v17

    sub-double v91, v91, v93

    mul-double v93, v23, v47

    mul-double v95, v27, v43

    sub-double v93, v93, v95

    mul-double v93, v93, v19

    add-double v91, v91, v93

    mul-double v91, v91, v5

    sub-double v89, v89, v91

    mul-double v91, v25, v49

    mul-double v93, v29, v45

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v49, v49, v23

    mul-double v93, v29, v43

    sub-double v49, v49, v93

    mul-double v49, v49, v15

    sub-double v49, v91, v49

    mul-double v91, v23, v45

    mul-double v93, v25, v43

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    add-double v49, v49, v91

    mul-double v49, v49, v7

    add-double v49, v49, v89

    mul-double v89, v25, v47

    mul-double v91, v27, v45

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v47, v47, v23

    mul-double v91, v27, v43

    sub-double v47, v47, v91

    mul-double v47, v47, v15

    sub-double v47, v89, v47

    mul-double v45, v45, v23

    mul-double v43, v43, v25

    sub-double v43, v45, v43

    mul-double v43, v43, v17

    add-double v43, v43, v47

    mul-double v43, v43, v9

    sub-double v43, v49, v43

    move-wide/from16 v0, v43

    neg-double v0, v0

    move-wide/from16 v43, v0

    mul-double v45, v29, v41

    mul-double v47, v31, v39

    sub-double v45, v45, v47

    mul-double v45, v45, v17

    mul-double v47, v27, v41

    mul-double v49, v31, v37

    sub-double v47, v47, v49

    mul-double v47, v47, v19

    sub-double v45, v45, v47

    mul-double v47, v27, v39

    mul-double v49, v29, v37

    sub-double v47, v47, v49

    mul-double v47, v47, v21

    add-double v45, v45, v47

    mul-double v45, v45, v5

    mul-double v47, v29, v41

    mul-double v49, v31, v39

    sub-double v47, v47, v49

    mul-double v47, v47, v15

    mul-double v49, v25, v41

    mul-double v89, v31, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v19

    sub-double v47, v47, v49

    mul-double v49, v25, v39

    mul-double v89, v29, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v21

    add-double v47, v47, v49

    mul-double v47, v47, v7

    sub-double v45, v45, v47

    mul-double v47, v27, v41

    mul-double v49, v31, v37

    sub-double v47, v47, v49

    mul-double v47, v47, v15

    mul-double v49, v25, v41

    mul-double v89, v31, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v17

    sub-double v47, v47, v49

    mul-double v49, v25, v37

    mul-double v89, v27, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v21

    add-double v47, v47, v49

    mul-double v47, v47, v9

    add-double v45, v45, v47

    mul-double v47, v27, v39

    mul-double v49, v29, v37

    sub-double v47, v47, v49

    mul-double v47, v47, v15

    mul-double v49, v25, v39

    mul-double v89, v29, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v17

    sub-double v47, v47, v49

    mul-double v49, v25, v37

    mul-double v89, v27, v35

    sub-double v49, v49, v89

    mul-double v49, v49, v19

    add-double v47, v47, v49

    mul-double v47, v47, v11

    sub-double v45, v45, v47

    mul-double v47, v29, v41

    mul-double v49, v31, v39

    sub-double v47, v47, v49

    mul-double v47, v47, v17

    mul-double v49, v27, v41

    mul-double v89, v31, v37

    sub-double v49, v49, v89

    mul-double v49, v49, v19

    sub-double v47, v47, v49

    mul-double v49, v27, v39

    mul-double v89, v29, v37

    sub-double v49, v49, v89

    mul-double v49, v49, v21

    add-double v47, v47, v49

    mul-double v47, v47, v3

    mul-double v49, v29, v41

    mul-double v89, v31, v39

    sub-double v49, v49, v89

    mul-double v49, v49, v13

    mul-double v89, v23, v41

    mul-double v91, v31, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    sub-double v49, v49, v89

    mul-double v89, v23, v39

    mul-double v91, v29, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v49, v49, v89

    mul-double v49, v49, v7

    sub-double v47, v47, v49

    mul-double v49, v27, v41

    mul-double v89, v31, v37

    sub-double v49, v49, v89

    mul-double v49, v49, v13

    mul-double v89, v23, v41

    mul-double v91, v31, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v17

    sub-double v49, v49, v89

    mul-double v89, v23, v37

    mul-double v91, v27, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v49, v49, v89

    mul-double v49, v49, v9

    add-double v47, v47, v49

    mul-double v49, v27, v39

    mul-double v89, v29, v37

    sub-double v49, v49, v89

    mul-double v49, v49, v13

    mul-double v89, v23, v39

    mul-double v91, v29, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v17

    sub-double v49, v49, v89

    mul-double v89, v23, v37

    mul-double v91, v27, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    add-double v49, v49, v89

    mul-double v49, v49, v11

    sub-double v47, v47, v49

    move-wide/from16 v0, v47

    neg-double v0, v0

    move-wide/from16 v47, v0

    mul-double v49, v29, v41

    mul-double v89, v31, v39

    sub-double v49, v49, v89

    mul-double v49, v49, v15

    mul-double v89, v25, v41

    mul-double v91, v31, v35

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    sub-double v49, v49, v89

    mul-double v89, v25, v39

    mul-double v91, v29, v35

    sub-double v89, v89, v91

    mul-double v89, v89, v21

    add-double v49, v49, v89

    mul-double v49, v49, v3

    mul-double v89, v29, v41

    mul-double v91, v31, v39

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v41

    mul-double v93, v31, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    sub-double v89, v89, v91

    mul-double v91, v23, v39

    mul-double v93, v29, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v5

    sub-double v49, v49, v89

    mul-double v89, v25, v41

    mul-double v91, v31, v35

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v41

    mul-double v93, v31, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v15

    sub-double v89, v89, v91

    mul-double v91, v23, v35

    mul-double v93, v25, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v9

    add-double v49, v49, v89

    mul-double v89, v25, v39

    mul-double v91, v29, v35

    sub-double v89, v89, v91

    mul-double v89, v89, v13

    mul-double v91, v23, v39

    mul-double v93, v29, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v15

    sub-double v89, v89, v91

    mul-double v91, v23, v35

    mul-double v93, v25, v33

    sub-double v91, v91, v93

    mul-double v91, v91, v19

    add-double v89, v89, v91

    mul-double v89, v89, v11

    sub-double v49, v49, v89

    mul-double v89, v27, v41

    mul-double v91, v31, v37

    sub-double v89, v89, v91

    mul-double v89, v89, v15

    mul-double v91, v25, v41

    mul-double v93, v31, v35

    sub-double v91, v91, v93

    mul-double v91, v91, v17

    sub-double v89, v89, v91

    mul-double v91, v25, v37

    mul-double v93, v27, v35

    sub-double v91, v91, v93

    mul-double v91, v91, v21

    add-double v89, v89, v91

    mul-double v89, v89, v3

    mul-double v91, v27, v41

    mul-double v93, v31, v37

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v93, v23, v41

    mul-double v95, v31, v33

    sub-double v93, v93, v95

    mul-double v93, v93, v17

    sub-double v91, v91, v93

    mul-double v93, v23, v37

    mul-double v95, v27, v33

    sub-double v93, v93, v95

    mul-double v93, v93, v21

    add-double v91, v91, v93

    mul-double v91, v91, v5

    sub-double v89, v89, v91

    mul-double v91, v25, v41

    mul-double v93, v31, v35

    sub-double v91, v91, v93

    mul-double v91, v91, v13

    mul-double v41, v41, v23

    mul-double v31, v31, v33

    sub-double v31, v41, v31

    mul-double v31, v31, v15

    sub-double v31, v91, v31

    mul-double v41, v23, v35

    mul-double v91, v25, v33

    sub-double v41, v41, v91

    mul-double v21, v21, v41

    add-double v21, v21, v31

    mul-double v21, v21, v7

    add-double v21, v21, v89

    mul-double v31, v25, v37

    mul-double v41, v27, v35

    sub-double v31, v31, v41

    mul-double v31, v31, v13

    mul-double v41, v23, v37

    mul-double v89, v27, v33

    sub-double v41, v41, v89

    mul-double v41, v41, v15

    sub-double v31, v31, v41

    mul-double v41, v23, v35

    mul-double v89, v25, v33

    sub-double v41, v41, v89

    mul-double v41, v41, v17

    add-double v31, v31, v41

    mul-double v31, v31, v11

    sub-double v21, v21, v31

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    mul-double v31, v27, v39

    mul-double v41, v29, v37

    sub-double v31, v31, v41

    mul-double v31, v31, v15

    mul-double v41, v25, v39

    mul-double v89, v29, v35

    sub-double v41, v41, v89

    mul-double v41, v41, v17

    sub-double v31, v31, v41

    mul-double v41, v25, v37

    mul-double v89, v27, v35

    sub-double v41, v41, v89

    mul-double v41, v41, v19

    add-double v31, v31, v41

    mul-double v31, v31, v3

    mul-double v41, v27, v39

    mul-double v89, v29, v37

    sub-double v41, v41, v89

    mul-double v41, v41, v13

    mul-double v89, v23, v39

    mul-double v91, v29, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v17

    sub-double v41, v41, v89

    mul-double v89, v23, v37

    mul-double v91, v27, v33

    sub-double v89, v89, v91

    mul-double v89, v89, v19

    add-double v41, v41, v89

    mul-double v41, v41, v5

    sub-double v31, v31, v41

    mul-double v41, v25, v39

    mul-double v89, v29, v35

    sub-double v41, v41, v89

    mul-double v41, v41, v13

    mul-double v39, v39, v23

    mul-double v29, v29, v33

    sub-double v29, v39, v29

    mul-double v29, v29, v15

    sub-double v29, v41, v29

    mul-double v39, v23, v35

    mul-double v41, v25, v33

    sub-double v39, v39, v41

    mul-double v19, v19, v39

    add-double v19, v19, v29

    mul-double v19, v19, v7

    add-double v19, v19, v31

    mul-double v29, v25, v37

    mul-double v31, v27, v35

    sub-double v29, v29, v31

    mul-double v13, v13, v29

    mul-double v29, v23, v37

    mul-double v27, v27, v33

    sub-double v27, v29, v27

    mul-double v15, v15, v27

    sub-double/2addr v13, v15

    mul-double v15, v23, v35

    mul-double v23, v25, v33

    sub-double v15, v15, v23

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    mul-double/2addr v13, v9

    sub-double v13, v19, v13

    mul-double v2, v3, v53

    mul-double v4, v5, v55

    add-double/2addr v2, v4

    mul-double v4, v7, v57

    add-double/2addr v2, v4

    mul-double v4, v9, v59

    add-double/2addr v2, v4

    mul-double v4, v11, v61

    add-double/2addr v2, v4

    div-double v2, v2, p2

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    const/4 v5, 0x0

    div-double v6, v53, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    div-double v6, v63, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    div-double v6, v73, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x3

    div-double v6, v83, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x4

    div-double v6, v45, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    div-double v6, v55, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x6

    div-double v6, v65, v2

    aput-wide v6, v4, v5

    const/4 v5, 0x7

    div-double v6, v75, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x8

    div-double v6, v85, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x9

    div-double v6, v47, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xa

    div-double v6, v57, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xb

    div-double v6, v67, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xc

    div-double v6, v77, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xd

    div-double v6, v87, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xe

    div-double v6, v49, v2

    aput-wide v6, v4, v5

    const/16 v5, 0xf

    div-double v6, v59, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x10

    div-double v6, v69, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x11

    div-double v6, v79, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x12

    div-double v6, v51, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x13

    div-double v6, v21, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x14

    div-double v6, v61, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x15

    div-double v6, v71, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x16

    div-double v6, v81, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x17

    div-double v6, v43, v2

    aput-wide v6, v4, v5

    const/16 v5, 0x18

    div-double v2, v13, v2

    aput-wide v2, v4, v5

    return-void
.end method
