.class final Lcom/google/android/location/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/google/g/a/b/b/a;

.field final synthetic c:Lcom/google/android/location/af;


# direct methods
.method constructor <init>(Lcom/google/android/location/af;Ljava/util/Calendar;Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/location/ag;->c:Lcom/google/android/location/af;

    iput-object p2, p0, Lcom/google/android/location/ag;->a:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/google/android/location/ag;->b:Lcom/google/g/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/ag;->c:Lcom/google/android/location/af;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/ag;->a:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/ag;->b:Lcom/google/g/a/b/b/a;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "IOHistory"

    const-string v3, "No data to classify."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "IOHistory"

    const-string v3, "No data to classify."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v10

    const/16 v2, 0xa

    invoke-static {v10, v2}, Lcom/google/android/location/p/h;->b(Lcom/google/g/a/b/b/a;I)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x4

    invoke-static {v10, v2}, Lcom/google/android/location/p/h;->b(Lcom/google/g/a/b/b/a;I)Ljava/util/List;

    move-result-object v11

    iget-object v2, v9, Lcom/google/android/location/af;->a:Lcom/google/android/location/ab;

    new-instance v6, Lcom/google/android/location/z;

    invoke-direct {v6}, Lcom/google/android/location/z;-><init>()V

    new-instance v2, Lcom/google/android/location/aa;

    invoke-static {v8}, Lcom/google/android/location/z;->a(Ljava/util/List;)F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/google/android/location/z;->a(Ljava/util/List;Z)F

    move-result v4

    invoke-virtual {v6, v8}, Lcom/google/android/location/z;->b(Ljava/util/List;)F

    move-result v5

    invoke-virtual {v6, v8}, Lcom/google/android/location/z;->c(Ljava/util/List;)F

    move-result v6

    invoke-static {v8}, Lcom/google/android/location/z;->d(Ljava/util/List;)F

    move-result v7

    invoke-static {v8}, Lcom/google/android/location/z;->e(Ljava/util/List;)F

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/aa;-><init>(FFFFFF)V

    const-wide v4, 0x3fe6a0902de00d1bL    # 0.7071

    const-wide v6, -0x403f10cb295e9e1bL    # -0.1323

    iget v3, v2, Lcom/google/android/location/aa;->a:F

    float-to-double v14, v3

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    const-wide v6, -0x4065c91d14e3bcd3L    # -0.0256

    iget v3, v2, Lcom/google/android/location/aa;->b:F

    float-to-double v14, v3

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    const-wide v6, -0x40aab367a0f9096cL    # -0.0013

    iget v3, v2, Lcom/google/android/location/aa;->c:F

    float-to-double v14, v3

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    const-wide v6, 0x3fa1de69ad42c3caL    # 0.0349

    iget v3, v2, Lcom/google/android/location/aa;->d:F

    float-to-double v14, v3

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    const-wide v6, -0x4048c7e28240b780L    # -0.0907

    iget v3, v2, Lcom/google/android/location/aa;->e:F

    float-to-double v14, v3

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    const-wide v6, -0x407d916872b020c5L    # -0.009

    iget v2, v2, Lcom/google/android/location/aa;->f:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    neg-double v2, v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v6

    div-double v2, v4, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_8

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_9

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v14

    invoke-static {v11}, Lcom/google/android/location/s;->a(Ljava/util/List;)[[D

    move-result-object v2

    if-nez v2, :cond_b

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_4

    const-string v3, "CalibrationCollector"

    const-string v4, "Too few gyro readings: %d"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v11, :cond_a

    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    move-object v12, v2

    :goto_4
    if-eqz v10, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_5
    const/4 v2, 0x0

    move-object v11, v2

    :goto_5
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_6

    const-string v2, "IOHistory"

    const-string v3, "Indoor probability: <%s, %.5f>; Is still:%s; Max speed: %s dms/s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v14, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v12, v4, v5

    const/4 v5, 0x3

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lcom/google/android/location/f/at;

    const/4 v3, 0x1

    iget-object v4, v9, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/d;->a()Ljavax/crypto/SecretKey;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, v9, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v6}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v6

    sget-object v7, Lcom/google/android/location/n/a;->bj:Lcom/google/g/a/b/b/c;

    iget-object v8, v9, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v8}, Lcom/google/android/location/os/at;->o()Ljava/io/File;

    move-result-object v8

    iget-object v10, v9, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v10}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/f/at;-><init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/location/f/at;->a()Lcom/google/g/a/b/b/a;

    move-result-object v3

    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_7

    const-string v4, "IOHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Actual file version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/location/f/at;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v4, v3

    :goto_6
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/location/af;->a(Ljava/util/TimeZone;Lcom/google/g/a/b/b/a;)I

    move-result v3

    if-gez v3, :cond_12

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "IOHistory"

    const-string v3, "Unable to find/create time zone ID."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    goto/16 :goto_2

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_3

    :cond_b
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_c

    const-string v3, "CalibrationCollector"

    const-string v4, "VX: %.8f, VY: %.8f, VZ: %.8f"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const/4 v8, 0x0

    aget-wide v16, v7, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-wide v16, v7, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const/4 v8, 0x2

    aget-wide v16, v7, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_d

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_d

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v6, v2

    move v2, v4

    move v4, v5

    :goto_8
    const/16 v5, 0x8

    invoke-virtual {v10, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v5

    if-ge v6, v5, :cond_f

    const/16 v5, 0x8

    invoke-virtual {v10, v5, v6}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    const/16 v5, 0x8

    invoke-virtual {v7, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v5, 0x8

    invoke-virtual {v7, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    if-nez v5, :cond_18

    const/16 v5, 0x10

    invoke-virtual {v7, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v5, v4, 0x1

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v4

    cmpl-float v7, v4, v2

    if-ltz v7, :cond_17

    move v3, v4

    move v4, v5

    :goto_9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto :goto_8

    :cond_f
    const/4 v5, 0x2

    if-lt v4, v5, :cond_10

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_5

    :catch_0
    move-exception v3

    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_11

    const-string v3, "IOHistory"

    const-string v4, "Invalid or empty IO history."

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->bj:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    move-object v4, v3

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->bi:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    iget-object v3, v14, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v6, 0x3

    iget-object v3, v14, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v5, v6, v3}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    :cond_13
    const/4 v6, 0x4

    iget-object v3, v14, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    double-to-int v3, v14

    invoke-virtual {v5, v6, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x5

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    :cond_14
    if-eqz v11, :cond_15

    const/4 v3, 0x6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_15
    const/4 v3, 0x7

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    invoke-static {v4}, Lcom/google/android/location/af;->b(Lcom/google/g/a/b/b/a;)V

    const/4 v3, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/google/android/location/f/at;->b(Lcom/google/g/a/b/b/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_16
    :goto_a
    new-instance v3, Lcom/google/android/location/ah;

    sget-object v2, Lcom/google/android/location/ay;->k:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/p/f;

    invoke-direct {v3, v2}, Lcom/google/android/location/ah;-><init>(Lcom/google/android/location/p/f;)V

    invoke-virtual {v3, v4}, Lcom/google/android/location/ah;->a(Lcom/google/g/a/b/b/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/location/af;->c:Lcom/google/android/location/v;

    iget-object v4, v9, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/location/v;->a(JLjava/util/Map;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_16

    const-string v2, "IOHistory"

    const-string v3, "Unable to save data to disk."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    move v4, v5

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_9

    :cond_18
    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto/16 :goto_9
.end method
