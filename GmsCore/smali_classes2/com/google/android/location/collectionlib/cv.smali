.class public final Lcom/google/android/location/collectionlib/cv;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"


# static fields
.field private static g:I

.field private static volatile n:Z

.field private static volatile o:Ljava/lang/Object;

.field private static volatile p:Landroid/media/AudioRecord;

.field private static volatile q:Ljava/lang/Thread;


# instance fields
.field private a:Lcom/google/android/location/collectionlib/ct;

.field private b:Landroid/content/Context;

.field private h:[S

.field private i:[D

.field private j:I

.field private k:I

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/google/android/location/collectionlib/cv;->g:I

    .line 42
    sput-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/cv;->o:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/cv;->m:J

    .line 55
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cv;->b:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/google/android/location/collectionlib/ct;

    invoke-direct {v0, p4, p2}, Lcom/google/android/location/collectionlib/ct;-><init>(Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/ak;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cv;->a:Lcom/google/android/location/collectionlib/ct;

    .line 59
    const v0, 0x32000

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cv;->h:[S

    .line 60
    const/16 v0, 0x400

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cv;->i:[D

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    .line 62
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->h:[S

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->h:[S

    array-length v0, v0

    sub-int/2addr p1, v0

    .line 206
    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cv;)V
    .locals 2

    .prologue
    .line 21
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()Z
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/16 v12, 0x400

    const/4 v1, 0x0

    .line 126
    sget-boolean v2, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    :try_start_0
    sget-object v2, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/cv;->m:J

    .line 135
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cv;->g()V

    .line 137
    new-array v4, v12, [S

    .line 138
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    array-length v3, v4

    invoke-virtual {v2, v4, v1, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    .line 141
    const/4 v2, -0x3

    if-eq v3, v2, :cond_3

    const/4 v2, -0x2

    if-ne v3, v2, :cond_5

    .line 142
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v2, "Can\'t read audio..."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 143
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 145
    :goto_2
    if-ge v2, v3, :cond_7

    .line 146
    iget-object v5, p0, Lcom/google/android/location/collectionlib/cv;->h:[S

    iget v6, p0, Lcom/google/android/location/collectionlib/cv;->k:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/location/collectionlib/cv;->k:I

    aget-short v7, v4, v2

    aput-short v7, v5, v6

    .line 147
    iget v5, p0, Lcom/google/android/location/collectionlib/cv;->k:I

    invoke-direct {p0, v5}, Lcom/google/android/location/collectionlib/cv;->a(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/location/collectionlib/cv;->k:I

    .line 148
    iget v5, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    :cond_6
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cv;->a:Lcom/google/android/location/collectionlib/ct;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/cv;->i:[D

    invoke-virtual {v2, v3}, Lcom/google/android/location/collectionlib/ct;->a([D)V

    .line 158
    iget v2, p0, Lcom/google/android/location/collectionlib/cv;->j:I

    add-int/lit16 v2, v2, 0x400

    invoke-direct {p0, v2}, Lcom/google/android/location/collectionlib/cv;->a(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/location/collectionlib/cv;->j:I

    .line 159
    iget v2, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    add-int/lit16 v2, v2, -0x400

    iput v2, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    .line 151
    :cond_7
    iget v2, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    if-lt v2, v12, :cond_8

    .line 152
    iget v2, p0, Lcom/google/android/location/collectionlib/cv;->j:I

    move v3, v2

    move v2, v1

    .line 153
    :goto_3
    if-ge v2, v12, :cond_6

    .line 154
    iget-object v5, p0, Lcom/google/android/location/collectionlib/cv;->i:[D

    iget-object v6, p0, Lcom/google/android/location/collectionlib/cv;->h:[S

    add-int/lit8 v7, v3, 0x1

    aget-short v3, v6, v3

    int-to-double v8, v3

    const-wide/high16 v10, 0x40e0000000000000L    # 32768.0

    div-double/2addr v8, v10

    aput-wide v8, v5, v2

    .line 155
    invoke-direct {p0, v7}, Lcom/google/android/location/collectionlib/cv;->a(I)I

    move-result v3

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/location/collectionlib/cv;->m:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1b58

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    :try_start_1
    sget-object v2, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cv;->g()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v3, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-boolean v2, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    const-wide/32 v6, 0xcf08

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    :cond_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/cv;->m:J

    sget-object v2, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Can\'t start recording"

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Can\'t stop recording"

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3

    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/google/android/location/collectionlib/cv;->j:I

    .line 193
    iput v0, p0, Lcom/google/android/location/collectionlib/cv;->k:I

    .line 194
    iput v0, p0, Lcom/google/android/location/collectionlib/cv;->l:I

    .line 195
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    .line 66
    sget-object v6, Lcom/google/android/location/collectionlib/cv;->o:Ljava/lang/Object;

    monitor-enter v6

    .line 67
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    if-eqz v0, :cond_1

    .line 68
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "startInternal is called while previous recording is in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 69
    :cond_0
    monitor-exit v6

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 72
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "Can\'t start new audio recording - previous in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 73
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 75
    :cond_3
    const v0, 0x6baa8

    :try_start_1
    sput v0, Lcom/google/android/location/collectionlib/cv;->g:I

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "Can\'t record audio"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 76
    :cond_5
    :goto_1
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    sget v5, Lcom/google/android/location/collectionlib/cv;->g:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/location/collectionlib/cw;

    invoke-direct {v1, p0}, Lcom/google/android/location/collectionlib/cw;-><init>(Lcom/google/android/location/collectionlib/cv;)V

    const-string v2, "Audio Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    sput-object v0, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    monitor-exit v6

    goto :goto_0

    .line 75
    :cond_6
    sget v1, Lcom/google/android/location/collectionlib/cv;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/google/android/location/collectionlib/cv;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 254
    sget-object v1, Lcom/google/android/location/collectionlib/cv;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/google/android/location/collectionlib/cv;->n:Z

    .line 257
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 258
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v2, "Trying to stop recording which is not working"

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_0
    return-void

    .line 261
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :cond_2
    :goto_1
    :try_start_3
    sget-object v2, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    :try_start_5
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    :try_start_6
    sget-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/collectionlib/cv;->p:Landroid/media/AudioRecord;

    .line 276
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :catch_0
    move-exception v0

    :try_start_7
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cv;->c:Lcom/google/android/location/p/a/c;

    const-string v2, "Can\'t stop recording"

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 269
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 272
    :catch_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0
.end method
