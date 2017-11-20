.class public final Lcom/google/android/location/s;
.super Lcom/google/android/location/a;
.source "SourceFile"


# instance fields
.field final i:Lcom/google/android/location/v;

.field j:J

.field k:J

.field public l:J

.field m:Lcom/google/android/location/collectionlib/az;

.field n:Lcom/google/g/a/b/b/a;

.field o:I

.field p:I

.field private final q:Lcom/google/android/location/av;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/g/a/b/b/a;Lcom/google/android/location/av;Lcom/google/android/location/v;)V
    .locals 10

    .prologue
    .line 120
    const-string v3, "CalibrationCollector"

    sget-object v9, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 90
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/s;->j:J

    .line 94
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/s;->l:J

    .line 121
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/location/s;->q:Lcom/google/android/location/av;

    .line 122
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/location/s;->n:Lcom/google/g/a/b/b/a;

    .line 123
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    .line 124
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/android/location/s;->b(Lcom/google/g/a/b/b/a;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/s;->j:J

    .line 125
    invoke-direct {p0}, Lcom/google/android/location/s;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/s;->k:J

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/s;)J
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/location/s;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/location/s;Lcom/google/g/a/b/b/a;)J
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/location/s;->b(Lcom/google/g/a/b/b/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Lcom/google/android/location/os/at;)Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-interface {p0}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/io/File;

    const-string v3, "calibration"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "CalibrationCollector"

    const-string v2, "No calibration file present"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    sget-object v1, Lcom/google/android/location/n/a;->v:Lcom/google/g/a/b/b/c;

    invoke-static {v3, v1}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 142
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "CalibrationCollector"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[[D
    .locals 22

    .prologue
    .line 547
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 548
    :cond_0
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "CalibrationCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not enough gyro samples: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_1
    const/4 v2, 0x0

    .line 570
    :goto_0
    return-object v2

    .line 552
    :cond_2
    const-wide/16 v12, 0x0

    .line 553
    const-wide/16 v10, 0x0

    .line 554
    const-wide/16 v8, 0x0

    .line 555
    const-wide/16 v6, 0x0

    .line 556
    const-wide/16 v4, 0x0

    .line 557
    const-wide/16 v2, 0x0

    .line 558
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v16

    .line 559
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/g/a/b/b/a;

    .line 560
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    add-double v14, v14, v18

    .line 561
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v12, v12, v18

    .line 562
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    add-double v10, v10, v18

    .line 563
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v8, v8, v18

    .line 564
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    add-double v6, v6, v18

    .line 565
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 566
    goto :goto_1

    .line 567
    :cond_3
    move/from16 v0, v16

    int-to-double v2, v0

    div-double/2addr v14, v2

    .line 568
    move/from16 v0, v16

    int-to-double v2, v0

    div-double/2addr v10, v2

    .line 569
    move/from16 v0, v16

    int-to-double v2, v0

    div-double/2addr v6, v2

    .line 570
    const/4 v2, 0x2

    new-array v2, v2, [[D

    const/4 v3, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v14, v17, v18

    const/16 v18, 0x1

    aput-wide v10, v17, v18

    const/16 v18, 0x2

    aput-wide v6, v17, v18

    aput-object v17, v2, v3

    const/4 v3, 0x1

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v12, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v20

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    aput-wide v12, v17, v18

    const/4 v12, 0x1

    move/from16 v0, v16

    int-to-double v14, v0

    div-double/2addr v8, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    aput-wide v8, v17, v12

    const/4 v8, 0x2

    move/from16 v0, v16

    int-to-double v10, v0

    div-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v17, v8

    aput-object v17, v2, v3

    goto/16 :goto_0
.end method

.method private b(Lcom/google/g/a/b/b/a;)J
    .locals 7

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    .line 164
    .line 165
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    .line 173
    iget-object v4, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 177
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last successful calibration occurred at: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-wide v0

    .line 177
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/s;)V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/s;->h(J)V

    return-void
.end method

.method private h(J)V
    .locals 7

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/google/android/location/s;->l:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 261
    iput-wide p1, p0, Lcom/google/android/location/s;->l:J

    .line 262
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->f:Lcom/google/android/location/k/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 265
    :cond_1
    return-void
.end method

.method private i()J
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 277
    iget-wide v0, p0, Lcom/google/android/location/s;->j:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/s;->j:J

    iget-object v3, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    const/4 v0, 0x7

    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 284
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    :cond_1
    const/16 v1, 0xb

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 289
    const/16 v1, 0xc

    invoke-virtual {v2, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 290
    const/16 v1, 0xd

    invoke-virtual {v2, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 v1, 0xe

    invoke-virtual {v2, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const/4 v0, 0x1

    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 298
    :cond_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 299
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Next calibration time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v5}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_3
    return-wide v0

    .line 277
    :cond_4
    iget-wide v0, p0, Lcom/google/android/location/s;->j:J

    goto/16 :goto_0
.end method


# virtual methods
.method final a(IIZ)V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method final a(Lcom/google/android/location/f/ag;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method final a(Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method final a(Lcom/google/android/location/f/g;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method final a(Lcom/google/android/location/k/k;)V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/google/android/location/k/k;->f:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_0

    .line 321
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/s;->l:J

    .line 323
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/location/os/ah;)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method final a(Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected final a(J)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/location/s;->q:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/s;->h:Lcom/google/android/location/e;

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Z)V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method protected final b()Z
    .locals 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/android/location/s;->f:Z

    if-nez v0, :cond_1

    .line 248
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v1, "Network location provider turned off, stopping CalibrationCollector."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/s;->m:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    .line 250
    sget-object v0, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/s;->h:Lcom/google/android/location/e;

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(J)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const-wide/32 v8, 0x36ee80

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/android/location/s;->q:Lcom/google/android/location/av;

    invoke-virtual {v0, v1}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/s;->f:Z

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    iget-wide v2, p0, Lcom/google/android/location/s;->k:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    move v2, v10

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    move v0, v10

    :goto_2
    if-eqz v0, :cond_6

    .line 196
    sget-object v0, Lcom/google/android/location/e;->g:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/s;->h:Lcom/google/android/location/e;

    .line 199
    iget-object v0, p0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->d()I

    move-result v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v2}, Lcom/google/android/location/v;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v2}, Lcom/google/android/location/v;->e()I

    move-result v2

    :goto_4
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting calibration with delays: gyro: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v0, p0, Lcom/google/android/location/s;->o:I

    iput v2, p0, Lcom/google/android/location/s;->p:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/location/collectionlib/cb;

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v1

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v10

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    new-instance v7, Lcom/google/android/location/t;

    invoke-direct {v7, p0, v1}, Lcom/google/android/location/t;-><init>(Lcom/google/android/location/s;B)V

    iget-object v8, p0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/location/os/at;->a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/s;->m:Lcom/google/android/location/collectionlib/az;

    iget-object v0, p0, Lcom/google/android/location/s;->m:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->a()V

    .line 219
    :goto_5
    return v10

    :cond_1
    move v0, v1

    .line 194
    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 199
    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    .line 205
    :cond_6
    iget-wide v2, p0, Lcom/google/android/location/s;->k:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v8

    if-ltz v0, :cond_8

    .line 207
    invoke-direct {p0}, Lcom/google/android/location/s;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/s;->k:J

    .line 216
    :cond_7
    iget-wide v2, p0, Lcom/google/android/location/s;->k:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/s;->h(J)V

    :goto_6
    move v10, v1

    .line 219
    goto :goto_5

    .line 209
    :cond_8
    iget-wide v2, p0, Lcom/google/android/location/s;->k:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_7

    .line 213
    iget-wide v2, p0, Lcom/google/android/location/s;->k:J

    add-long/2addr v2, v8

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/s;->h(J)V

    goto :goto_6
.end method

.method final c(Z)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method
