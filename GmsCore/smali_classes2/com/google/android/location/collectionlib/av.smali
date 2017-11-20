.class final Lcom/google/android/location/collectionlib/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/bv;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:J

.field private J:J

.field private K:J

.field private L:J

.field private M:J

.field private N:Lcom/google/android/location/p/a/c;

.field private O:Lcom/google/android/location/collectionlib/aw;

.field private final P:Lcom/google/g/a/b/b/a;

.field a:Lcom/google/g/a/b/b/a;

.field b:Lcom/google/g/a/b/b/a;

.field c:Lcom/google/g/a/b/b/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;

.field private g:Z

.field private h:J

.field private i:I

.field private j:Z

.field private final k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private final p:Lcom/google/android/location/collectionlib/bx;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/a/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v5, p0, Lcom/google/android/location/collectionlib/av;->g:Z

    .line 92
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->h:J

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->i:I

    .line 100
    iput-boolean v5, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    .line 111
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    .line 116
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->m:J

    .line 121
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->n:J

    .line 126
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->o:J

    .line 132
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->q:I

    .line 133
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->r:I

    .line 134
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->s:I

    .line 135
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->t:I

    .line 136
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->u:I

    .line 137
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->v:I

    .line 138
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->w:I

    .line 139
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->x:I

    .line 140
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->y:I

    .line 141
    iput v1, p0, Lcom/google/android/location/collectionlib/av;->z:I

    .line 142
    iput v4, p0, Lcom/google/android/location/collectionlib/av;->A:F

    .line 143
    iput v4, p0, Lcom/google/android/location/collectionlib/av;->B:F

    .line 144
    iput v4, p0, Lcom/google/android/location/collectionlib/av;->C:F

    .line 145
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->D:J

    .line 146
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->E:J

    .line 147
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->F:J

    .line 148
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->G:J

    .line 149
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->H:J

    .line 150
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->I:J

    .line 151
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->J:J

    .line 152
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->K:J

    .line 153
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->L:J

    .line 154
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->M:J

    .line 157
    new-instance v0, Lcom/google/android/location/collectionlib/aw;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/aw;-><init>(Lcom/google/android/location/collectionlib/av;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->O:Lcom/google/android/location/collectionlib/aw;

    .line 177
    iput-object p1, p0, Lcom/google/android/location/collectionlib/av;->p:Lcom/google/android/location/collectionlib/bx;

    .line 178
    invoke-static {p6}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    .line 179
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->d:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/google/android/location/collectionlib/av;->e:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lcom/google/android/location/collectionlib/av;->f:Ljava/lang/Integer;

    .line 182
    if-eqz p5, :cond_0

    .line 183
    sget-object v0, Lcom/google/android/location/n/a;->v:Lcom/google/g/a/b/b/c;

    invoke-virtual {p5}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v1

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong protocol buffer type. Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iput-object p5, p0, Lcom/google/android/location/collectionlib/av;->P:Lcom/google/g/a/b/b/a;

    .line 186
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->d()V

    .line 187
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->e()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->k:J

    .line 190
    return-void
.end method

.method private a(FFFJJJ)Lcom/google/g/a/b/b/a;
    .locals 10

    .prologue
    .line 936
    move-wide/from16 v0, p6

    invoke-direct {p0, p4, p5, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 937
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aP:Lcom/google/g/a/b/b/c;

    const/16 v3, 0x9

    invoke-direct {v4, v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 938
    const/4 v2, 0x1

    invoke-virtual {v4, v2, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 939
    const/4 v2, 0x2

    invoke-virtual {v4, v2, p2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 940
    const/4 v2, 0x3

    invoke-virtual {v4, v2, p3}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 941
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-direct {p0, p4, p5}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 947
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_3

    .line 948
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v6

    .line 949
    invoke-direct {p0, p4, p5}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v8

    .line 950
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v3

    .line 951
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v2

    .line 956
    :goto_0
    if-eqz v3, :cond_1

    .line 957
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 959
    :cond_1
    if-eqz v2, :cond_2

    .line 960
    const/16 v3, 0x9

    invoke-virtual {v4, v3, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 962
    :cond_2
    return-object v4

    .line 953
    :cond_3
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v3

    .line 954
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v2

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 466
    iput-wide p1, p0, Lcom/google/android/location/collectionlib/av;->l:J

    .line 468
    :cond_0
    iput-wide p1, p0, Lcom/google/android/location/collectionlib/av;->m:J

    .line 469
    return-void
.end method

.method private a(JJ)V
    .locals 5

    .prologue
    .line 683
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 684
    iput-wide p1, p0, Lcom/google/android/location/collectionlib/av;->o:J

    .line 685
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->n:J

    .line 687
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/google/g/a/b/b/a;Z)V
    .locals 6

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->h:J

    .line 425
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->P:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 426
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 427
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    .line 430
    :cond_0
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->k:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 432
    if-eqz p2, :cond_2

    .line 433
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 438
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->p:Lcom/google/android/location/collectionlib/bx;

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->p:Lcom/google/android/location/collectionlib/bx;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/collectionlib/bx;->b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z

    .line 440
    if-eqz p2, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->p:Lcom/google/android/location/collectionlib/bx;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bx;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_1
    monitor-exit p0

    return-void

    .line 435
    :cond_2
    const/4 v1, 0x3

    :try_start_1
    iget v2, p0, Lcom/google/android/location/collectionlib/av;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 436
    iget v1, p0, Lcom/google/android/location/collectionlib/av;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/location/collectionlib/av;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/g/a/b/b/a;J)Z
    .locals 4

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 480
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add location after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    monitor-exit p0

    return v0

    .line 483
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 484
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long v2, p2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 485
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 486
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(JJ)I
    .locals 5

    .prologue
    .line 707
    sub-long v0, p3, p1

    .line 708
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 709
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Later event arrive earlier"

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 711
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private b(J)J
    .locals 7

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->o:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->n:J

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->e()I

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_2
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(JJ)I
    .locals 5

    .prologue
    .line 723
    sub-long v0, p3, p1

    .line 724
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 725
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Later event arrive earlier"

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 727
    :cond_0
    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->O:Lcom/google/android/location/collectionlib/aw;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->b()V

    .line 347
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->e()V

    .line 348
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(Lcom/google/g/a/b/b/a;Z)V

    .line 349
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->O:Lcom/google/android/location/collectionlib/aw;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/aw;->b()V

    .line 358
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    .line 359
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->y:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 360
    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 361
    const/4 v1, 0x5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 362
    const/4 v1, 0x1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 363
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->P:Lcom/google/g/a/b/b/a;

    if-eqz v1, :cond_0

    .line 364
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->P:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 367
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->z:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 368
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 369
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->A:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 371
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/collectionlib/av;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 372
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    .line 382
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->aL:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    .line 383
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->D:J

    .line 384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->E:J

    .line 385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->F:J

    .line 386
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->G:J

    .line 387
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->I:J

    .line 388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->J:J

    .line 389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->K:J

    .line 390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->H:J

    .line 391
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->L:J

    .line 392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->M:J

    .line 393
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->g:Z

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->g:Z

    .line 395
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->o:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 396
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 397
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 405
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 407
    :goto_0
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->k:J

    add-long/2addr v0, v2

    .line 408
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->h:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 409
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Timestaime changed from %d to %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 411
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v8

    .line 413
    :cond_1
    monitor-exit p0

    return-wide v0

    .line 405
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    .line 304
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->b()V

    .line 305
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(Lcom/google/g/a/b/b/a;Z)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(FFFF)V
    .locals 3

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->aP:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 1128
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1129
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1130
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1131
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p4}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1132
    iget-object v1, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 1133
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    monitor-exit p0

    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(FFFFFFIJJ)V
    .locals 12

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v2, :cond_1

    .line 887
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Could not add uncalibrated magnetic field snapshot after the composer is closed."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 890
    :cond_1
    :try_start_1
    move-wide/from16 v0, p10

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 891
    iget-wide v10, p0, Lcom/google/android/location/collectionlib/av;->M:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {v2 .. v11}, Lcom/google/android/location/collectionlib/av;->a(FFFJJJ)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 897
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->M:J

    .line 900
    iget-object v3, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/location/collectionlib/av;->z:I

    move/from16 v0, p7

    if-eq v3, v0, :cond_3

    .line 902
    :cond_2
    const/4 v3, 0x4

    move/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 903
    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->z:I

    .line 906
    :cond_3
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->aQ:Lcom/google/g/a/b/b/c;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 907
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 910
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/location/collectionlib/av;->A:F

    sub-float v2, p4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/google/android/location/collectionlib/av;->B:F

    sub-float v2, p5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/google/android/location/collectionlib/av;->C:F

    sub-float v2, p6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 912
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 913
    const/4 v2, 0x3

    move/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 914
    const/4 v2, 0x4

    move/from16 v0, p6

    invoke-virtual {v3, v2, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 915
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->A:F

    .line 916
    move/from16 v0, p5

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->B:F

    .line 917
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->C:F

    .line 920
    :cond_6
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 921
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 886
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 910
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized a(FFFIJJ)V
    .locals 13

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v4, :cond_1

    .line 741
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v5, "Could not add orientation snapshot after the composer is closed."

    invoke-virtual {v4, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 744
    :cond_1
    :try_start_1
    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 745
    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 746
    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->aM:Lcom/google/g/a/b/b/c;

    const/16 v5, 0x8

    invoke-direct {v6, v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 747
    const/4 v4, 0x1

    invoke-virtual {v6, v4, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 748
    const/4 v4, 0x3

    invoke-virtual {v6, v4, p2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 749
    const/4 v4, 0x2

    move/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 750
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 752
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 756
    :cond_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->E:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 757
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    .line 758
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v10

    .line 759
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 760
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v4

    .line 765
    :goto_1
    if-eqz v5, :cond_3

    .line 766
    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 768
    :cond_3
    if-eqz v4, :cond_4

    .line 769
    const/16 v5, 0x8

    invoke-virtual {v6, v5, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 771
    :cond_4
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->E:J

    .line 774
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/android/location/collectionlib/av;->r:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_6

    .line 776
    :cond_5
    const/4 v4, 0x4

    move/from16 v0, p4

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 777
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->r:I

    .line 779
    :cond_6
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 780
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 740
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 762
    :cond_7
    :try_start_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->E:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 763
    iget-wide v8, p0, Lcom/google/android/location/collectionlib/av;->E:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v8, v9, v0, v1}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method public final declared-synchronized a(FIJJ)V
    .locals 9

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 1033
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add barometer snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1036
    :cond_1
    :try_start_1
    invoke-direct {p0, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1037
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 1038
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->aT:Lcom/google/g/a/b/b/c;

    const/4 v1, 0x4

    invoke-direct {v2, v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1039
    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1040
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 1046
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->I:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1047
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 1048
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    .line 1049
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1050
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v0

    .line 1055
    :goto_1
    if-eqz v1, :cond_3

    .line 1056
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1058
    :cond_3
    if-eqz v0, :cond_4

    .line 1059
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1061
    :cond_4
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->I:J

    .line 1064
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/collectionlib/av;->v:I

    if-eq v0, p2, :cond_6

    .line 1066
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1067
    iput p2, p0, Lcom/google/android/location/collectionlib/av;->v:I

    .line 1069
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1070
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1052
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->I:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1053
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->I:J

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public final declared-synchronized a(ILjava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V
    .locals 10

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v2, :cond_1

    .line 598
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Could not add cell profile after the composer is closed."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 601
    :cond_1
    :try_start_1
    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 602
    const/4 v5, -0x1

    .line 603
    const/4 v4, -0x1

    .line 604
    const/4 v3, -0x1

    .line 605
    const/4 v2, -0x1

    .line 606
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 607
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 608
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 610
    :cond_2
    if-eqz p3, :cond_3

    .line 612
    instance-of v6, p3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v6, :cond_5

    .line 613
    move-object v0, p3

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 614
    check-cast p3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 620
    :cond_3
    :goto_1
    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->k:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 621
    new-instance v7, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->j:Lcom/google/g/a/b/b/c;

    invoke-direct {v7, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 622
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 623
    const/4 v3, 0x2

    invoke-virtual {v7, v3, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 624
    const/4 v2, 0x3

    invoke-virtual {v7, v2, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 625
    const/4 v2, 0x4

    invoke-virtual {v7, v2, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 626
    const/4 v2, 0x5

    invoke-virtual {v7, v2, p4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 627
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v2, -0x1

    .line 628
    :goto_2
    if-ltz v2, :cond_4

    .line 629
    const/16 v3, 0xa

    invoke-virtual {v7, v3, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 631
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 632
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long v4, p6, v4

    invoke-virtual {v6, v2, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 634
    if-eqz p5, :cond_6

    .line 635
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 636
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v5, Lcom/google/android/location/n/a;->j:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 637
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 638
    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 639
    const/16 v5, 0x8

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 640
    const/4 v5, 0x5

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 641
    const/4 v2, 0x3

    invoke-virtual {v6, v2, v4}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 597
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 615
    :cond_5
    :try_start_2
    instance-of v6, p3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v6, :cond_3

    .line 616
    move-object v0, p3

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 617
    move-object v0, p3

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 618
    check-cast p3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    goto/16 :goto_1

    .line 627
    :pswitch_1
    const/4 v2, 0x3

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x5

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_2

    .line 644
    :cond_6
    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 646
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Landroid/location/GpsStatus;J)V
    .locals 6

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 525
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add GPS status after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 528
    :cond_1
    if-eqz p1, :cond_0

    .line 531
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 534
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    .line 535
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aS:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 536
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long v4, p2, v4

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 539
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->aR:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 540
    const/4 v4, 0x4

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 541
    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 542
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 543
    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 544
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 547
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/List;J)V
    .locals 8

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 559
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add wifi profile after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 562
    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0, p2, p3}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 567
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->h:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 569
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->f:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 570
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/location/collectionlib/db;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 571
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 572
    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 575
    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 576
    const/16 v4, 0x9

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 577
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3, v0}, Lcom/google/android/location/f/bf;->a(Lcom/google/g/a/b/b/a;I)V

    .line 578
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 580
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long v2, p2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 581
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 582
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a([D[D[D[D[DJ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1303
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v1, :cond_1

    .line 1304
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add sound snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1307
    :cond_1
    :try_start_1
    invoke-direct {p0, p6, p7}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1308
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->aY:Lcom/google/g/a/b/b/c;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1309
    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-wide v4, p1, v1

    .line 1310
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(ID)V

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1312
    :cond_2
    array-length v3, p2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-wide v4, p2, v1

    .line 1313
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(ID)V

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1315
    :cond_3
    array-length v3, p3

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_4

    aget-wide v4, p3, v1

    .line 1316
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(ID)V

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1318
    :cond_4
    array-length v3, p4

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_5

    aget-wide v4, p4, v1

    .line 1319
    const/4 v6, 0x4

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(ID)V

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1321
    :cond_5
    array-length v1, p5

    :goto_5
    if-ge v0, v1, :cond_6

    aget-wide v4, p5, v0

    .line 1322
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/g/a/b/b/a;->a(ID)V

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1324
    :cond_6
    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->l:J

    sub-long v4, p6, v4

    long-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1327
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1328
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;J)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 492
    monitor-enter p0

    if-nez p1, :cond_0

    .line 513
    :goto_0
    monitor-exit p0

    return v0

    .line 495
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->r:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 496
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 497
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 498
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 499
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 500
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 503
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const/16 v1, 0xa

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 506
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    const/16 v1, 0xd

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 509
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 510
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 512
    :cond_4
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 513
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/location/collectionlib/av;->a(Lcom/google/g/a/b/b/a;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 456
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add customized data after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 461
    :goto_0
    monitor-exit p0

    return v0

    .line 459
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 460
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    const/4 v0, 0x1

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(FFFIJJ)V
    .locals 13

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v4, :cond_1

    .line 794
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v5, "Could not add accelerometer snapshot after the composer is closed."

    invoke-virtual {v4, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 797
    :cond_1
    :try_start_1
    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 798
    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 799
    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->aN:Lcom/google/g/a/b/b/c;

    const/16 v5, 0x8

    invoke-direct {v6, v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 800
    const/4 v4, 0x1

    invoke-virtual {v6, v4, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 801
    const/4 v4, 0x2

    invoke-virtual {v6, v4, p2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 802
    const/4 v4, 0x3

    move/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 803
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 805
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 809
    :cond_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->D:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 810
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    .line 811
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v10

    .line 812
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 813
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v4

    .line 818
    :goto_1
    if-eqz v5, :cond_3

    .line 819
    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 821
    :cond_3
    if-eqz v4, :cond_4

    .line 822
    const/16 v5, 0x8

    invoke-virtual {v6, v5, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 824
    :cond_4
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->D:J

    .line 827
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/android/location/collectionlib/av;->q:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_6

    .line 829
    :cond_5
    const/4 v4, 0x4

    move/from16 v0, p4

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 830
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->q:I

    .line 832
    :cond_6
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 833
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 793
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 815
    :cond_7
    :try_start_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->D:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 816
    iget-wide v8, p0, Lcom/google/android/location/collectionlib/av;->D:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v8, v9, v0, v1}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method public final declared-synchronized b(FIJJ)V
    .locals 9

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 1086
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add light snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1089
    :cond_1
    :try_start_1
    invoke-direct {p0, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1090
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 1091
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->aU:Lcom/google/g/a/b/b/c;

    const/4 v1, 0x4

    invoke-direct {v2, v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1092
    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1093
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 1099
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->J:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1100
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 1101
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    .line 1102
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1103
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v0

    .line 1108
    :goto_1
    if-eqz v1, :cond_3

    .line 1109
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1111
    :cond_3
    if-eqz v0, :cond_4

    .line 1112
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1114
    :cond_4
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->J:J

    .line 1116
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/collectionlib/av;->w:I

    if-eq v0, p2, :cond_6

    .line 1118
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1119
    iput p2, p0, Lcom/google/android/location/collectionlib/av;->w:I

    .line 1121
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1122
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1105
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->J:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1106
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->J:J

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public final declared-synchronized c(FFFIJJ)V
    .locals 13

    .prologue
    .line 845
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v2, :cond_1

    .line 846
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v3, "Could not add magnetic field snapshot after the composer is closed."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 849
    :cond_1
    :try_start_1
    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 850
    iget-wide v10, p0, Lcom/google/android/location/collectionlib/av;->F:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v11}, Lcom/google/android/location/collectionlib/av;->a(FFFJJJ)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 856
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->F:J

    .line 859
    iget-object v3, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/location/collectionlib/av;->s:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_3

    .line 861
    :cond_2
    const/4 v3, 0x4

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 862
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->s:I

    .line 864
    :cond_3
    iget-object v3, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 865
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized c(FIJJ)V
    .locals 9

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 1149
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add proximity snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1152
    :cond_1
    :try_start_1
    invoke-direct {p0, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1153
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 1154
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->aV:Lcom/google/g/a/b/b/c;

    const/4 v1, 0x4

    invoke-direct {v2, v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1155
    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1156
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 1162
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->L:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1163
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 1164
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    .line 1165
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1166
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v0

    .line 1171
    :goto_1
    if-eqz v1, :cond_3

    .line 1172
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1174
    :cond_3
    if-eqz v0, :cond_4

    .line 1175
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1177
    :cond_4
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->L:J

    .line 1179
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/collectionlib/av;->x:I

    if-eq v0, p2, :cond_6

    .line 1181
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1182
    iput p2, p0, Lcom/google/android/location/collectionlib/av;->x:I

    .line 1184
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1185
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1168
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->L:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1169
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->L:J

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public final declared-synchronized d(FFFIJJ)V
    .locals 13

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v4, :cond_1

    .line 977
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v5, "Could not add gyroscope snapshot after the composer is closed."

    invoke-virtual {v4, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 980
    :cond_1
    :try_start_1
    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 981
    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 982
    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->aO:Lcom/google/g/a/b/b/c;

    const/16 v5, 0x8

    invoke-direct {v6, v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 983
    const/4 v4, 0x1

    invoke-virtual {v6, v4, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 984
    const/4 v4, 0x2

    invoke-virtual {v6, v4, p2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 985
    const/4 v4, 0x3

    move/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 986
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 988
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 992
    :cond_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->G:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 993
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    .line 994
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v10

    .line 995
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 996
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v4

    .line 1001
    :goto_1
    if-eqz v5, :cond_3

    .line 1002
    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1004
    :cond_3
    if-eqz v4, :cond_4

    .line 1005
    const/16 v5, 0x8

    invoke-virtual {v6, v5, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1007
    :cond_4
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/av;->G:J

    .line 1010
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/google/android/location/collectionlib/av;->t:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_6

    .line 1012
    :cond_5
    const/4 v4, 0x4

    move/from16 v0, p4

    invoke-virtual {v6, v4, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1013
    move/from16 v0, p4

    iput v0, p0, Lcom/google/android/location/collectionlib/av;->t:I

    .line 1015
    :cond_6
    iget-object v4, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1016
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 976
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 998
    :cond_7
    :try_start_2
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->G:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v5

    .line 999
    iget-wide v8, p0, Lcom/google/android/location/collectionlib/av;->G:J

    move-wide/from16 v0, p5

    invoke-direct {p0, v8, v9, v0, v1}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method public final declared-synchronized d(FIJJ)V
    .locals 9

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 1200
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add heart rate snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1203
    :cond_1
    :try_start_1
    invoke-direct {p0, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1204
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 1205
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->aW:Lcom/google/g/a/b/b/c;

    const/4 v1, 0x4

    invoke-direct {v2, v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1206
    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1207
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 1213
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->H:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1214
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 1215
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    .line 1216
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1217
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v0

    .line 1222
    :goto_1
    if-eqz v1, :cond_3

    .line 1223
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1225
    :cond_3
    if-eqz v0, :cond_4

    .line 1226
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1228
    :cond_4
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->H:J

    .line 1230
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/collectionlib/av;->u:I

    if-eq v0, p2, :cond_6

    .line 1232
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1233
    iput p2, p0, Lcom/google/android/location/collectionlib/av;->u:I

    .line 1235
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1236
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1219
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->H:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1220
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->H:J

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public final declared-synchronized e(FIJJ)V
    .locals 9

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/av;->j:Z

    if-eqz v0, :cond_1

    .line 1251
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->N:Lcom/google/android/location/p/a/c;

    const-string v1, "Could not add step counter snapshot after the composer is closed."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1254
    :cond_1
    :try_start_1
    invoke-direct {p0, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(J)V

    .line 1255
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/location/collectionlib/av;->a(JJ)V

    .line 1256
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->aX:Lcom/google/g/a/b/b/c;

    const/4 v1, 0x4

    invoke-direct {v2, v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;I)V

    .line 1257
    const/4 v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    .line 1258
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 1264
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->K:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1265
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 1266
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(J)J

    move-result-wide v6

    .line 1267
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1268
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/av;->c(JJ)I

    move-result v0

    .line 1273
    :goto_1
    if-eqz v1, :cond_3

    .line 1274
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1276
    :cond_3
    if-eqz v0, :cond_4

    .line 1277
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1279
    :cond_4
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/av;->K:J

    .line 1281
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/collectionlib/av;->y:I

    if-eq v0, p2, :cond_6

    .line 1283
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 1284
    iput p2, p0, Lcom/google/android/location/collectionlib/av;->y:I

    .line 1286
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 1287
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/av;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1270
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/av;->K:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/location/collectionlib/av;->b(JJ)I

    move-result v1

    .line 1271
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/av;->K:J

    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/location/collectionlib/av;->c(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method
