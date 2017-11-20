.class public final Lcom/google/android/location/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/google/android/location/i/e;

.field b:Ljava/util/LinkedList;

.field final c:Ljava/util/LinkedList;

.field private final e:Lcom/google/android/gms/common/util/i;

.field private final f:Lcom/google/android/location/i/f;

.field private final g:Lcom/google/android/location/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/i/d;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/i/c;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/i/f;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/google/android/location/i/e;->a:Lcom/google/android/location/i/e;

    iput-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    .line 134
    iput-object p1, p0, Lcom/google/android/location/i/d;->g:Lcom/google/android/location/i/c;

    .line 135
    iput-object p2, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    .line 136
    iput-object p3, p0, Lcom/google/android/location/i/d;->f:Lcom/google/android/location/i/f;

    .line 137
    return-void
.end method

.method private declared-synchronized a(J)Landroid/util/Pair;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x3

    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-wide v6, p1

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v1, v4

    :goto_1
    if-ltz v2, :cond_4

    .line 321
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 325
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v8

    cmp-long v3, v8, p1

    if-gtz v3, :cond_9

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    .line 332
    if-ne v3, v10, :cond_5

    .line 320
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-wide v2, p1

    :goto_3
    if-ltz v5, :cond_3

    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    iget-wide v6, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    cmp-long v1, v6, p1

    if-gtz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-nez v1, :cond_2

    iget-wide v0, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    :cond_1
    :goto_4
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_3

    :cond_2
    iget-wide v6, v0, Lcom/google/android/location/geofencer/b/b;->d:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xa1220

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    iget-wide v0, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "MovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Merging periods with small gaps, lastDetectionStart = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v6, v2

    goto/16 :goto_0

    :cond_4
    move-object v0, v4

    .line 339
    :cond_5
    :try_start_1
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_6

    .line 340
    const-string v2, "MovementManager"

    const-string v3, "lastDetectionStart=%d, checkTime=%d, firstStill=%s, lastNonStill=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_6
    const-wide/16 v2, 0x0

    .line 345
    if-eqz v1, :cond_8

    .line 346
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    sub-long v2, p1, v2

    move-wide v4, v2

    .line 348
    :goto_5
    const-wide v2, 0x7fffffffffffffffL

    .line 349
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 350
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 353
    :goto_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_7
    move-wide v0, v2

    goto :goto_6

    :cond_8
    move-wide v4, v2

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-wide v0, v2

    goto/16 :goto_4
.end method

.method private static a(Lcom/google/android/gms/location/ActivityRecognitionResult;I)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 4

    .prologue
    .line 535
    new-instance v0, Lcom/google/android/location/activity/b;

    invoke-direct {v0}, Lcom/google/android/location/activity/b;-><init>()V

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/b;->b(J)Lcom/google/android/location/activity/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/activity/b;->a(J)Lcom/google/android/location/activity/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/activity/b;->a(Ljava/util/List;)Lcom/google/android/location/activity/b;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/activity/b;->a(Ljava/lang/Integer;I)Lcom/google/android/location/activity/b;

    .line 540
    invoke-virtual {v0}, Lcom/google/android/location/activity/b;->a()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/LinkedList;)V
    .locals 6

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 248
    iget-boolean v2, v0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/location/geofencer/b/b;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa1220

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method private b(J)Lcom/google/android/location/i/e;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 547
    sget-object v0, Lcom/google/android/location/x;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/google/android/location/i/e;->e:Lcom/google/android/location/i/e;

    .line 595
    :goto_0
    return-object v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 559
    sget-object v0, Lcom/google/android/location/i/e;->a:Lcom/google/android/location/i/e;

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 562
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    .line 563
    if-ne v4, v8, :cond_2

    move v1, v2

    .line 569
    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v6, 0xa1220

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 571
    sget-object v0, Lcom/google/android/location/i/e;->a:Lcom/google/android/location/i/e;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 563
    goto :goto_1

    .line 576
    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v2, :cond_5

    .line 578
    :cond_4
    sget-object v0, Lcom/google/android/location/i/e;->e:Lcom/google/android/location/i/e;

    goto :goto_0

    .line 582
    :cond_5
    if-ne v4, v5, :cond_6

    .line 583
    sget-object v0, Lcom/google/android/location/i/e;->d:Lcom/google/android/location/i/e;

    goto :goto_0

    .line 587
    :cond_6
    if-ne v4, v9, :cond_9

    .line 588
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    sget-object v3, Lcom/google/android/location/i/e;->c:Lcom/google/android/location/i/e;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    sget-object v3, Lcom/google/android/location/i/e;->e:Lcom/google/android/location/i/e;

    if-ne v2, v3, :cond_7

    const/16 v2, 0xa

    if-le v1, v2, :cond_7

    sget-object v0, Lcom/google/android/location/i/e;->e:Lcom/google/android/location/i/e;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    sget-object v2, Lcom/google/android/location/i/e;->d:Lcom/google/android/location/i/e;

    if-ne v1, v2, :cond_8

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    sget-object v0, Lcom/google/android/location/i/e;->d:Lcom/google/android/location/i/e;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/google/android/location/i/e;->b:Lcom/google/android/location/i/e;

    goto :goto_0

    .line 592
    :cond_9
    if-ne v4, v8, :cond_c

    .line 593
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/i/d;->a(J)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_a

    sget-object v0, Lcom/google/android/location/i/e;->c:Lcom/google/android/location/i/e;

    goto/16 :goto_0

    :cond_a
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xa1220

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    sget-object v0, Lcom/google/android/location/i/e;->a:Lcom/google/android/location/i/e;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    goto/16 :goto_0

    .line 595
    :cond_c
    sget-object v0, Lcom/google/android/location/i/e;->b:Lcom/google/android/location/i/e;

    goto/16 :goto_0
.end method

.method private b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v4, 0xbbaee0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/location/geofencer/b/c;
    .locals 6

    .prologue
    .line 260
    monitor-enter p0

    const/4 v0, 0x0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 262
    new-instance v1, Lcom/google/android/location/geofencer/b/c;

    invoke-direct {v1}, Lcom/google/android/location/geofencer/b/c;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 264
    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/b/c;->a(J)Lcom/google/android/location/geofencer/b/c;

    .line 265
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 266
    invoke-static {v0}, Lcom/google/android/location/i/g;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/m/b;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/b/c;->a(Lcom/google/android/location/m/b;)Lcom/google/android/location/geofencer/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 273
    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/b/c;->a(Lcom/google/android/location/geofencer/b/b;)Lcom/google/android/location/geofencer/b/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 276
    :cond_3
    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 397
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "MovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 403
    :cond_1
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 404
    const-string v0, "MovementManager"

    const-string v1, "Ignoring same result."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    .line 413
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 415
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 416
    const-string v0, "MovementManager"

    const-string v1, "Ignoring low confidence tilting results."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/google/android/location/i/d;->g:Lcom/google/android/location/i/c;

    iget-boolean v3, v3, Lcom/google/android/location/i/c;->a:Z

    if-eqz v3, :cond_5

    if-eq v0, v8, :cond_5

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    .line 428
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 429
    const-string v0, "MovementManager"

    const-string v1, "Ignoring non-obvious activity when screen is on."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    if-eq v3, v9, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    const/16 v3, 0x32

    if-ge v0, v3, :cond_8

    :cond_6
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_9

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/location/i/d;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;I)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object p1

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inferred activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/location/i/d;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/location/i/d;->f:Lcom/google/android/location/i/f;

    invoke-interface {v0}, Lcom/google/android/location/i/f;->a()V

    .line 439
    invoke-virtual {p0}, Lcom/google/android/location/i/d;->e()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 433
    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_a

    if-lt v0, v10, :cond_b

    iget-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    sget-object v1, Lcom/google/android/location/i/e;->e:Lcom/google/android/location/i/e;

    if-ne v0, v1, :cond_b

    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/location/i/d;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;I)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object p1

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inferred activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(I)I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_c

    if-lt v0, v10, :cond_7

    iget-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    sget-object v1, Lcom/google/android/location/i/e;->d:Lcom/google/android/location/i/e;

    if-ne v0, v1, :cond_7

    :cond_c
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/location/i/d;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;I)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object p1

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inferred activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/google/android/location/geofencer/b/c;)V
    .locals 6

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p1, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 159
    iget-boolean v2, v0, Lcom/google/android/location/geofencer/b/b;->a:Z

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/b;

    .line 167
    invoke-static {v0}, Lcom/google/android/location/i/g;->a(Lcom/google/android/location/m/b;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0, v0}, Lcom/google/android/location/i/d;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/i/d;->b(J)Lcom/google/android/location/i/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/i/d;->b(J)Lcom/google/android/location/i/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    .line 181
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_7

    .line 182
    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activity results. Current movement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 187
    if-nez v1, :cond_4

    .line 188
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_4
    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-boolean v1, v0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-eqz v1, :cond_5

    .line 192
    iget-wide v0, v0, Lcom/google/android/location/geofencer/b/b;->d:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    :goto_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v0, 0x0

    move v1, v0

    .line 198
    goto :goto_2

    .line 194
    :cond_5
    const-string v0, "now"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 199
    :cond_6
    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Loaded periods:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_7
    monitor-exit p0

    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    .line 208
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "MovementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivityDetectionEnabled: enabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 213
    :goto_0
    if-eqz p1, :cond_3

    .line 214
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-nez v1, :cond_2

    .line 218
    const-string v1, "MovementManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last period not closed. Start="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_1
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Lcom/google/android/location/geofencer/b/b;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/b/b;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/b/b;->a(J)Lcom/google/android/location/geofencer/b/b;

    .line 222
    iget-object v1, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/google/android/location/i/d;->c:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/google/android/location/i/d;->a(Ljava/util/LinkedList;)V

    goto :goto_1

    .line 229
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-eqz v1, :cond_5

    .line 233
    :cond_4
    const-string v1, "MovementManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last period already closed. Start="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/google/android/location/geofencer/b/b;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/location/geofencer/b/b;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/b/b;->b(J)Lcom/google/android/location/geofencer/b/b;

    goto :goto_1
.end method

.method public final declared-synchronized b()J
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/i/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/google/android/location/i/e;
    .locals 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/i/d;->b(J)Lcom/google/android/location/i/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    .line 293
    iget-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 4

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/i/d;->a(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/32 v2, 0xb28720

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/i/d;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/i/d;->b(J)Lcom/google/android/location/i/e;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    if-eq v0, v1, :cond_1

    .line 449
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 450
    const-string v1, "MovementManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCurrentMovement="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newMovement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/i/d;->f:Lcom/google/android/location/i/f;

    iget-object v2, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;

    invoke-interface {v1, v2, v0}, Lcom/google/android/location/i/f;->a(Lcom/google/android/location/i/e;Lcom/google/android/location/i/e;)V

    .line 454
    iput-object v0, p0, Lcom/google/android/location/i/d;->a:Lcom/google/android/location/i/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_1
    monitor-exit p0

    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
