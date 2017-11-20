.class public abstract Lcom/google/android/location/activity/f;
.super Lcom/google/android/location/collectionlib/cs;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/location/activity/d;


# direct methods
.method protected constructor <init>(Lcom/google/android/location/activity/d;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(JJLjava/util/List;J)J
    .locals 19

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v2, Lcom/google/android/location/activity/d;->c:Lcom/google/android/location/activity/a/o;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/google/android/location/activity/a/o;->a(JJLjava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/activity/f;->a:Ljava/util/List;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/a/s;

    iget-object v2, v2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    sget-object v4, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 353
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-static {v2}, Lcom/google/android/location/activity/d;->b(Lcom/google/android/location/activity/d;)Lcom/google/android/location/activity/be;

    move-result-object v8

    const/4 v2, 0x3

    new-array v9, v2, [D

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    if-ltz v3, :cond_1

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/d/i;

    iget-wide v6, v2, Lcom/google/android/location/d/i;->a:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, v6, v10

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    aget-wide v6, v9, v5

    iget-object v10, v2, Lcom/google/android/location/d/i;->b:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v10, v10

    add-double/2addr v6, v10

    aput-wide v6, v9, v5

    const/4 v5, 0x1

    aget-wide v6, v9, v5

    iget-object v10, v2, Lcom/google/android/location/d/i;->b:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-double v10, v10

    add-double/2addr v6, v10

    aput-wide v6, v9, v5

    const/4 v5, 0x2

    aget-wide v6, v9, v5

    iget-object v2, v2, Lcom/google/android/location/d/i;->b:[F

    const/4 v10, 0x2

    aget v2, v2, v10

    float-to-double v10, v2

    add-double/2addr v6, v10

    aput-wide v6, v9, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-wide v6, v9, v2

    int-to-double v10, v4

    div-double/2addr v6, v10

    aput-wide v6, v9, v2

    const/4 v2, 0x1

    aget-wide v6, v9, v2

    int-to-double v10, v4

    div-double/2addr v6, v10

    aput-wide v6, v9, v2

    const/4 v2, 0x2

    aget-wide v6, v9, v2

    int-to-double v4, v4

    div-double v4, v6, v4

    aput-wide v4, v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-static {v3}, Lcom/google/android/location/activity/d;->a(Lcom/google/android/location/activity/d;)D

    move-result-wide v4

    iget-wide v6, v8, Lcom/google/android/location/activity/be;->c:J

    cmp-long v3, p3, v6

    if-gtz v3, :cond_8

    const/4 v2, 0x0

    .line 357
    :goto_1
    if-eqz v2, :cond_3

    .line 363
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityDetectionRunner"

    const-string v4, "Significant tilt detected between activities"

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/location/os/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->d:Lcom/google/android/location/activity/e;

    invoke-interface {v3, v2}, Lcom/google/android/location/activity/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 368
    :cond_3
    sget-object v2, Lcom/google/android/location/d/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-static {v2}, Lcom/google/android/location/activity/d;->c(Lcom/google/android/location/activity/d;)Lcom/google/android/location/activity/a/a/b;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-static {v2}, Lcom/google/android/location/activity/d;->c(Lcom/google/android/location/activity/d;)Lcom/google/android/location/activity/a/a/b;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/location/activity/a/a/b;->a:J

    cmp-long v2, p3, v4

    if-lez v2, :cond_b

    invoke-static/range {p5 .. p5}, Lcom/google/android/location/activity/a/a/c;->a(Ljava/util/List;)Lcom/google/android/location/activity/a/a/d;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/location/activity/a/a/b;->b:Lcom/google/android/location/activity/a/a/a;

    invoke-virtual {v4, v2}, Lcom/google/android/location/activity/a/a/a;->a(Lcom/google/android/location/activity/a/a/d;)Ljava/util/List;

    move-result-object v2

    move-wide/from16 v0, p3

    iput-wide v0, v3, Lcom/google/android/location/activity/a/a/b;->a:J

    .line 372
    :goto_2
    if-eqz v2, :cond_5

    .line 373
    invoke-static {v2}, Lcom/google/android/location/activity/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 375
    new-instance v2, Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 377
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_4

    const-string v3, "ActivityDetectionRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Phone position detection result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/google/android/location/os/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3, v2}, Lcom/google/android/location/os/at;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 382
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/f;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/location/activity/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 384
    new-instance v2, Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 386
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_6

    const-string v3, "ActivityDetectionRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity detection result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/location/os/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v3, v3, Lcom/google/android/location/activity/d;->d:Lcom/google/android/location/activity/e;

    move-wide/from16 v0, p6

    invoke-interface {v3, v2, v0, v1}, Lcom/google/android/location/activity/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J

    move-result-wide v2

    .line 389
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_7

    const-string v4, "ActivityDetectionRunner"

    const-string v5, "onAccelData: callback.onActivityDetected(nlpActivity, %d) returns %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_7
    return-wide v2

    .line 353
    :cond_8
    const/4 v3, 0x0

    iget-object v6, v8, Lcom/google/android/location/activity/be;->a:[D

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/activity/a/s;

    iget-object v2, v2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    sget-object v6, Lcom/google/android/location/activity/a/t;->i:Lcom/google/android/location/activity/a/t;

    if-ne v2, v6, :cond_a

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_c

    iget-object v2, v8, Lcom/google/android/location/activity/be;->a:[D

    new-instance v6, Lcom/google/android/location/p/i;

    invoke-direct {v6, v9}, Lcom/google/android/location/p/i;-><init>([D)V

    new-instance v7, Lcom/google/android/location/p/i;

    invoke-direct {v7, v2}, Lcom/google/android/location/p/i;-><init>([D)V

    iget-wide v10, v7, Lcom/google/android/location/p/i;->a:D

    iget-wide v12, v7, Lcom/google/android/location/p/i;->b:D

    iget-wide v14, v7, Lcom/google/android/location/p/i;->c:D

    iget-wide v0, v6, Lcom/google/android/location/p/i;->a:D

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    iget-wide v0, v6, Lcom/google/android/location/p/i;->b:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    iget-wide v12, v6, Lcom/google/android/location/p/i;->c:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-virtual {v6}, Lcom/google/android/location/p/i;->a()D

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/location/p/i;->a()D

    move-result-wide v6

    mul-double/2addr v6, v12

    div-double v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_9

    const-string v2, "TiltDetector"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Angle change since last classification is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    cmpl-double v2, v6, v4

    if-ltz v2, :cond_c

    iget-wide v2, v8, Lcom/google/android/location/activity/be;->b:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long v4, p1, v2

    iget-wide v2, v8, Lcom/google/android/location/activity/be;->c:J

    sub-long v2, p3, v2

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    sub-long v6, p3, v2

    new-instance v2, Lcom/google/android/gms/location/ActivityRecognitionResult;

    new-instance v3, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v10, 0x5

    const/16 v11, 0x64

    invoke-direct {v3, v10, v11}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V

    :goto_4
    iput-object v9, v8, Lcom/google/android/location/activity/be;->a:[D

    move-wide/from16 v0, p1

    iput-wide v0, v8, Lcom/google/android/location/activity/be;->b:J

    move-wide/from16 v0, p3

    iput-wide v0, v8, Lcom/google/android/location/activity/be;->c:J

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 368
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    move-object v2, v3

    goto :goto_4
.end method

.method protected abstract a(JJLjava/util/List;)Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-boolean v0, v0, Lcom/google/android/location/activity/d;->b:Z

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/location/activity/d;->b:Z

    .line 459
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v0, v0, Lcom/google/android/location/activity/d;->d:Lcom/google/android/location/activity/e;

    invoke-interface {v0, p1}, Lcom/google/android/location/activity/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 10

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-boolean v0, v0, Lcom/google/android/location/activity/d;->b:Z

    if-nez v0, :cond_1

    .line 310
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityDetectionRunner"

    const-string v1, "Not processing accel data since activity detection was canceled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/location/activity/d;->b:Z

    .line 314
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v0, v0, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    .line 315
    iget-object v0, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v0, v0, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    .line 316
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 317
    if-nez v0, :cond_2

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-virtual {v1, v0}, Lcom/google/android/location/activity/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 323
    iget-object v1, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    invoke-virtual {v1, v6}, Lcom/google/android/location/activity/d;->d(Ljava/util/List;)V

    .line 324
    invoke-static {v0, v6}, Lcom/google/android/location/activity/d;->a(Ljava/util/List;Ljava/util/List;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/location/activity/f;->b:Lcom/google/android/location/activity/d;

    iget-object v1, v1, Lcom/google/android/location/activity/d;->d:Lcom/google/android/location/activity/e;

    invoke-static {v0}, Lcom/google/android/location/activity/d;->a(Ljava/util/List;)D

    move-result-wide v8

    invoke-interface {v1, v8, v9}, Lcom/google/android/location/activity/e;->a(D)V

    move-object v1, p0

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/activity/f;->a(JJLjava/util/List;)Ljava/lang/String;

    goto :goto_0
.end method
