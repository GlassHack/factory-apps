.class final Lcom/google/android/location/activity/j;
.super Lcom/google/android/location/activity/f;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/location/activity/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/i;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/f;-><init>(Lcom/google/android/location/activity/d;)V

    return-void
.end method

.method private static a(Ljava/util/List;IJ)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v0, v0, Lcom/google/android/location/d/i;->a:J

    sub-long v4, v0, p2

    move v1, p1

    .line 156
    :goto_0
    if-ltz v1, :cond_1

    .line 157
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v6, v0, Lcom/google/android/location/d/i;->a:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_0

    move v0, v1

    .line 169
    :goto_1
    return v0

    .line 156
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v0, v0, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xbebc200

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    move v0, v2

    .line 167
    goto :goto_1

    .line 169
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected final a(JJLjava/util/List;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 64
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->d:Lcom/google/android/location/activity/e;

    const-string v3, "accel data is empty"

    invoke-interface {v2, v3}, Lcom/google/android/location/activity/e;->a(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->b(I)V

    .line 68
    const-string v2, "accel data is empty"

    .line 124
    :goto_0
    return-object v2

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    invoke-static {v2}, Lcom/google/android/location/activity/i;->a(Lcom/google/android/location/activity/i;)Lcom/google/android/location/d/i;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-object v3, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    invoke-static {v3}, Lcom/google/android/location/activity/i;->a(Lcom/google/android/location/activity/i;)Lcom/google/android/location/d/i;

    move-result-object v4

    iget-wide v6, v2, Lcom/google/android/location/d/i;->a:J

    iget-wide v8, v4, Lcom/google/android/location/d/i;->a:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/google/android/location/d/i;->b:[F

    array-length v3, v3

    iget-object v5, v4, Lcom/google/android/location/d/i;->b:[F

    array-length v5, v5

    if-eq v3, v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->d:Lcom/google/android/location/activity/e;

    const-string v3, "same accel data as previous one"

    invoke-interface {v2, v3}, Lcom/google/android/location/activity/e;->a(Ljava/lang/String;)V

    .line 74
    const-string v2, "same accel data as previous one"

    goto :goto_0

    .line 70
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v5, v2, Lcom/google/android/location/d/i;->b:[F

    array-length v5, v5

    if-ge v3, v5, :cond_4

    iget-object v5, v2, Lcom/google/android/location/d/i;->b:[F

    aget v5, v5, v3

    iget-object v6, v4, Lcom/google/android/location/d/i;->b:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x358637bd    # 1.0E-6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 76
    :cond_5
    iget-object v3, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    invoke-static {v3, v2}, Lcom/google/android/location/activity/i;->a(Lcom/google/android/location/activity/i;Lcom/google/android/location/d/i;)Lcom/google/android/location/d/i;

    .line 77
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_6

    const-string v3, "ActivityDetectionRunnerInPast"

    const-string v4, "onAccelData: %d events, %f seconds"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v8, v2, Lcom/google/android/location/d/i;->a:J

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v10, v2, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_6
    invoke-static/range {p5 .. p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 85
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .line 88
    :goto_3
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->c:Lcom/google/android/location/activity/a/o;

    invoke-interface {v2}, Lcom/google/android/location/activity/a/o;->a()J

    move-result-wide v4

    invoke-static {v12, v3, v4, v5}, Lcom/google/android/location/activity/j;->a(Ljava/util/List;IJ)I

    move-result v11

    .line 89
    const/4 v2, -0x1

    if-eq v11, v2, :cond_a

    .line 90
    add-int/lit8 v2, v3, 0x1

    invoke-interface {v12, v11, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 93
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_7

    move v3, v11

    .line 96
    goto :goto_3

    .line 98
    :cond_7
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v4, v2, Lcom/google/android/location/d/i;->a:J

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v6, v2, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v4, v6

    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->c:Lcom/google/android/location/activity/a/o;

    invoke-interface {v2}, Lcom/google/android/location/activity/a/o;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long v9, v4, v6

    .line 101
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v4, v2, Lcom/google/android/location/d/i;->a:J

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v2, v2, Lcom/google/android/location/d/i;->a:J

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 103
    sub-long v4, p1, v2

    sub-long v6, p3, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/location/activity/j;->a(JJLjava/util/List;J)J

    move-result-wide v2

    .line 105
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 107
    iget-object v2, p0, Lcom/google/android/location/activity/j;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/a/s;

    iget-object v2, v2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    invoke-virtual {v2}, Lcom/google/android/location/activity/a/t;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 109
    :cond_8
    cmp-long v4, v2, v9

    if-lez v4, :cond_9

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Return value of detectActivity cannot be larger than maxSkipTimeToNextDetectionMillis."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_9
    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-static {v12, v11, v2, v3}, Lcom/google/android/location/activity/j;->a(Ljava/util/List;IJ)I

    move-result v2

    .line 116
    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 117
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 120
    goto/16 :goto_3

    .line 121
    :cond_a
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_b

    const-string v2, "ActivityDetectionRunnerInPast"

    const-string v3, "The time duration of sensor batching data is too short"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_b
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->d:Lcom/google/android/location/activity/e;

    invoke-interface {v2}, Lcom/google/android/location/activity/e;->l_()V

    .line 123
    iget-object v2, p0, Lcom/google/android/location/activity/j;->c:Lcom/google/android/location/activity/i;

    iget-object v2, v2, Lcom/google/android/location/activity/i;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->b(I)V

    .line 124
    const-string v2, "insufficient_samples"

    goto/16 :goto_0
.end method
