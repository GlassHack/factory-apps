.class public final Lcom/google/android/location/activity/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D

.field private static final b:D

.field private static final c:D

.field private static final d:D


# instance fields
.field private final e:Lcom/google/android/location/activity/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lcom/google/android/location/activity/b/a;->a:D

    .line 62
    const-wide v0, 0x3fc3333333333333L    # 0.15

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lcom/google/android/location/activity/b/a;->b:D

    .line 63
    const-wide v0, 0x3fc851eb851eb852L    # 0.19

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lcom/google/android/location/activity/b/a;->c:D

    .line 65
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lcom/google/android/location/activity/b/a;->d:D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    .line 76
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/location/activity/b/a;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Ljava/util/List;
    .locals 45

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Need at least 1 observation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_1
    sget v2, Lcom/google/android/location/activity/b/j;->b:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 115
    sget v3, Lcom/google/android/location/activity/b/j;->b:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 116
    sget-object v5, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget v7, v5, v4

    .line 121
    aget-object v7, v3, v7

    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_2
    sget v4, Lcom/google/android/location/activity/b/j;->b:I

    new-array v0, v4, [D

    move-object/from16 v26, v0

    .line 128
    sget v4, Lcom/google/android/location/activity/b/j;->b:I

    new-array v10, v4, [D

    .line 133
    sget v4, Lcom/google/android/location/activity/b/j;->b:I

    new-array v0, v4, [J

    move-object/from16 v24, v0

    .line 135
    sget v4, Lcom/google/android/location/activity/b/j;->b:I

    new-array v9, v4, [J

    .line 138
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v31, v0

    .line 141
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v32, v0

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v4, 0x0

    .line 146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    if-eqz v5, :cond_1d

    .line 147
    sget v4, Lcom/google/android/location/activity/b/j;->b:I

    new-array v4, v4, [Lcom/google/android/location/activity/b/e;

    move-object v12, v4

    .line 151
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/activity/b/g;

    .line 152
    const/4 v5, 0x0

    iget-object v4, v4, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-wide v6, v4, Lcom/google/android/location/activity/b/i;->b:J

    aput-wide v6, v31, v5

    .line 153
    sget-object v5, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    aget v7, v5, v4

    .line 154
    aget-object v11, v2, v7

    const/4 v13, 0x0

    aput v7, v11, v13

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 156
    :cond_3
    const/4 v4, 0x0

    sget-wide v6, Lcom/google/android/location/activity/b/a;->b:D

    aput-wide v6, v26, v4

    const/4 v4, 0x1

    sget-wide v6, Lcom/google/android/location/activity/b/a;->a:D

    aput-wide v6, v26, v4

    const/4 v4, 0x2

    sget-wide v6, Lcom/google/android/location/activity/b/a;->b:D

    aput-wide v6, v26, v4

    const/4 v4, 0x3

    sget-wide v6, Lcom/google/android/location/activity/b/a;->a:D

    aput-wide v6, v26, v4

    const/4 v4, 0x4

    sget-wide v6, Lcom/google/android/location/activity/b/a;->b:D

    aput-wide v6, v26, v4

    const/4 v4, 0x5

    sget-wide v6, Lcom/google/android/location/activity/b/a;->b:D

    aput-wide v6, v26, v4

    const/4 v4, 0x6

    sget-wide v6, Lcom/google/android/location/activity/b/a;->c:D

    aput-wide v6, v26, v4

    const/4 v4, 0x7

    sget-wide v6, Lcom/google/android/location/activity/b/a;->c:D

    aput-wide v6, v26, v4

    .line 159
    const/4 v5, 0x0

    .line 160
    const-wide/16 v6, -0x1

    .line 162
    const/4 v4, 0x0

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v3

    move-object/from16 v28, v2

    move-wide v4, v6

    move-object v6, v8

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_16

    .line 163
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/b/g;

    .line 164
    iget-object v3, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-wide v8, v3, Lcom/google/android/location/activity/b/i;->b:J

    aput-wide v8, v31, v18

    .line 166
    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-object v3, v3, Lcom/google/android/location/activity/b/i;->a:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/activity/b/h;

    iget v3, v3, Lcom/google/android/location/activity/b/h;->a:I

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1b

    .line 168
    :cond_4
    iget-object v3, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-wide v0, v3, Lcom/google/android/location/activity/b/i;->b:J

    move-wide/from16 v20, v0

    .line 170
    :goto_4
    if-eqz v18, :cond_5

    .line 171
    aget-wide v4, v31, v18

    add-int/lit8 v3, v18, -0x1

    aget-wide v8, v31, v3

    sub-long/2addr v4, v8

    aput-wide v4, v32, v18

    .line 176
    :cond_5
    iget-object v3, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-object v3, v3, Lcom/google/android/location/activity/b/i;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/activity/b/h;

    iget v3, v3, Lcom/google/android/location/activity/b/h;->a:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    const/16 v22, 0x1

    .line 180
    :goto_5
    iget-object v3, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-object v3, v3, Lcom/google/android/location/activity/b/i;->a:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/location/activity/b/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v33

    .line 185
    sget-object v34, Lcom/google/android/location/activity/b/j;->a:[I

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    const/4 v3, 0x0

    move/from16 v29, v3

    move-object v3, v6

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_14

    aget v36, v34, v29

    .line 189
    if-eqz v22, :cond_b

    .line 191
    const-wide/16 v4, 0x0

    move-wide/from16 v16, v4

    .line 198
    :goto_7
    invoke-static/range {v36 .. v36}, Lcom/google/android/location/activity/b/k;->a(I)Lcom/google/android/location/activity/b/l;

    move-result-object v37

    .line 201
    const/4 v5, -0x1

    .line 202
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 203
    sget-object v38, Lcom/google/android/location/activity/b/j;->a:[I

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v39, v0

    const/4 v4, 0x0

    move/from16 v30, v4

    move-wide/from16 v42, v6

    move-object v6, v3

    move v3, v5

    move-wide/from16 v4, v42

    :goto_8
    move/from16 v0, v30

    move/from16 v1, v39

    if-ge v0, v1, :cond_e

    aget v13, v38, v30

    .line 207
    if-eqz v22, :cond_d

    .line 209
    move/from16 v0, v36

    if-ne v13, v0, :cond_c

    .line 210
    const-wide/16 v8, 0x0

    .line 219
    :goto_9
    aget-wide v10, v26, v13

    add-double v14, v8, v10

    .line 224
    if-eqz p2, :cond_7

    if-nez v22, :cond_7

    .line 226
    invoke-static {v13}, Lcom/google/android/location/activity/b/k;->a(I)Lcom/google/android/location/activity/b/l;

    move-result-object v7

    .line 227
    move-object/from16 v0, v37

    if-eq v7, v0, :cond_7

    if-eqz v7, :cond_7

    .line 230
    aget-wide v10, v24, v13

    .line 231
    iget v0, v7, Lcom/google/android/location/activity/b/l;->b:I

    move/from16 v40, v0

    move/from16 v0, v40

    if-ne v0, v13, :cond_6

    .line 232
    aget-wide v40, v32, v18

    add-long v10, v10, v40

    .line 234
    :cond_6
    iget-wide v0, v7, Lcom/google/android/location/activity/b/l;->a:J

    move-wide/from16 v40, v0

    cmp-long v7, v10, v40

    if-gez v7, :cond_7

    .line 235
    sget-wide v10, Lcom/google/android/location/activity/b/k;->a:D

    add-double/2addr v14, v10

    .line 240
    :cond_7
    cmpg-double v7, v14, v4

    if-ltz v7, :cond_8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v7, v4, v10

    if-nez v7, :cond_9

    .line 244
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    if-eqz v3, :cond_1c

    .line 245
    new-instance v3, Lcom/google/android/location/activity/b/e;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    mul-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget-wide v8, v26, v13

    add-double v10, v14, v16

    invoke-direct/range {v3 .. v11}, Lcom/google/android/location/activity/b/e;-><init>(DDDD)V

    move-wide v4, v14

    move-object v6, v3

    move v3, v13

    .line 203
    :cond_9
    :goto_a
    add-int/lit8 v7, v30, 0x1

    move/from16 v30, v7

    goto :goto_8

    .line 176
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 193
    :cond_b
    move/from16 v0, v36

    move-object/from16 v1, v33

    invoke-static {v0, v2, v1}, Lcom/google/android/location/activity/b/f;->a(ILcom/google/android/location/activity/b/g;Ljava/util/List;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    neg-double v4, v4

    move-wide/from16 v16, v4

    goto/16 :goto_7

    .line 212
    :cond_c
    sget-wide v8, Lcom/google/android/location/activity/b/a;->d:D

    goto :goto_9

    .line 215
    :cond_d
    iget-object v7, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-wide v8, v7, Lcom/google/android/location/activity/b/i;->b:J

    sub-long v8, v8, v20

    move/from16 v0, v36

    move/from16 v1, v19

    invoke-static {v13, v0, v1, v8, v9}, Lcom/google/android/location/activity/b/m;->a(IIZJ)D

    move-result-wide v8

    goto/16 :goto_9

    .line 254
    :cond_e
    aget-object v8, v28, v3

    .line 255
    aget-object v9, v27, v36

    move/from16 v7, v18

    .line 256
    :goto_b
    if-ltz v7, :cond_10

    .line 257
    aget v10, v8, v7

    .line 258
    aget v11, v9, v7

    .line 259
    if-ne v10, v11, :cond_f

    move/from16 v0, v18

    if-lt v7, v0, :cond_10

    .line 261
    :cond_f
    aput v10, v9, v7

    .line 256
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    .line 265
    :cond_10
    add-int/lit8 v7, v18, 0x1

    aput v36, v9, v7

    .line 266
    add-double v4, v4, v16

    aput-wide v4, v25, v36

    .line 269
    if-eqz p2, :cond_11

    if-nez v22, :cond_11

    .line 270
    if-eqz v37, :cond_13

    .line 272
    invoke-static {v3}, Lcom/google/android/location/activity/b/k;->a(I)Lcom/google/android/location/activity/b/l;

    move-result-object v4

    .line 276
    move-object/from16 v0, v37

    if-ne v4, v0, :cond_13

    .line 278
    aget-wide v4, v24, v3

    aput-wide v4, v23, v36

    .line 280
    move-object/from16 v0, v37

    iget v4, v0, Lcom/google/android/location/activity/b/l;->b:I

    if-ne v4, v3, :cond_11

    .line 282
    aget-wide v4, v23, v36

    aget-wide v8, v32, v18

    add-long/2addr v4, v8

    aput-wide v4, v23, v36

    .line 291
    :cond_11
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    if-eqz v3, :cond_12

    .line 292
    aput-object v6, v12, v36

    .line 185
    :cond_12
    add-int/lit8 v3, v29, 0x1

    move/from16 v29, v3

    move-object v3, v6

    goto/16 :goto_6

    .line 286
    :cond_13
    const-wide/16 v4, 0x0

    aput-wide v4, v23, v36

    goto :goto_c

    .line 296
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    if-eqz v2, :cond_15

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/b/a;->e:Lcom/google/android/location/activity/b/d;

    .line 162
    :cond_15
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    move-wide/from16 v4, v20

    move/from16 v19, v22

    move-object v6, v3

    move-object/from16 v42, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v42

    move-object/from16 v43, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v43

    move-object/from16 v44, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v44

    goto/16 :goto_3

    .line 317
    :cond_16
    const/4 v7, -0x1

    .line 318
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 319
    sget-object v9, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v10, v9

    const/4 v2, 0x0

    move v8, v2

    :goto_d
    if-ge v8, v10, :cond_17

    aget v6, v9, v8

    .line 320
    aget-wide v2, v26, v6

    .line 321
    cmpg-double v11, v2, v4

    if-gez v11, :cond_1a

    move v4, v6

    .line 319
    :goto_e
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v7, v4

    move-wide v4, v2

    goto :goto_d

    .line 326
    :cond_17
    aget-object v4, v28, v7

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    .line 332
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/b/g;

    iget-object v2, v2, Lcom/google/android/location/activity/b/g;->a:Lcom/google/android/location/activity/b/i;

    iget-object v2, v2, Lcom/google/android/location/activity/b/i;->a:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/b/h;

    iget v2, v2, Lcom/google/android/location/activity/b/h;->a:I

    const/4 v6, 0x5

    if-ne v2, v6, :cond_18

    add-int/lit8 v2, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_18

    .line 334
    new-instance v2, Lcom/google/android/location/activity/b/b;

    aget-wide v6, v31, v3

    add-int/lit8 v8, v3, 0x2

    aget v8, v4, v8

    invoke-direct {v2, v6, v7, v8}, Lcom/google/android/location/activity/b/b;-><init>(JI)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    .line 336
    :cond_18
    new-instance v2, Lcom/google/android/location/activity/b/b;

    aget-wide v6, v31, v3

    add-int/lit8 v8, v3, 0x1

    aget v8, v4, v8

    invoke-direct {v2, v6, v7, v8}, Lcom/google/android/location/activity/b/b;-><init>(JI)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 340
    :cond_19
    return-object v5

    :cond_1a
    move-wide v2, v4

    move v4, v7

    goto :goto_e

    :cond_1b
    move-wide/from16 v20, v4

    goto/16 :goto_4

    :cond_1c
    move-wide v4, v14

    move v3, v13

    goto/16 :goto_a

    :cond_1d
    move-object v12, v4

    goto/16 :goto_1
.end method
