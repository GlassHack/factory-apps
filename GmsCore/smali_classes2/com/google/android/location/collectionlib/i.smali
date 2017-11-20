.class public final Lcom/google/android/location/collectionlib/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ay;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/location/collectionlib/ab;

.field private h:J

.field private final i:Lcom/google/android/location/p/a/c;

.field private j:[B

.field private k:[B

.field private volatile l:Z

.field private final m:Lcom/google/android/location/p/j;

.field private volatile n:Z

.field private o:Ljava/util/concurrent/CountDownLatch;

.field private p:Ljava/lang/Runnable;

.field private q:Lcom/google/android/location/collectionlib/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    sput-object v0, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    const-string v1, ".lck"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    const-string v1, "sessionId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    const-string v1, "uploadedSeq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    const-string v1, "sessionSummary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BLcom/google/android/location/collectionlib/ab;Landroid/os/Looper;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/i;->l:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/i;->n:Z

    .line 97
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->o:Ljava/util/concurrent/CountDownLatch;

    .line 174
    new-instance v0, Lcom/google/android/location/collectionlib/j;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/j;-><init>(Lcom/google/android/location/collectionlib/i;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->p:Ljava/lang/Runnable;

    .line 134
    if-eqz p6, :cond_0

    if-eqz p7, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "looper could not be null when listener is not null."

    invoke-static {v0, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 136
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    if-nez p4, :cond_1

    if-eqz p5, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "Need non empty key or keyPath."

    invoke-static {v0, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 140
    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v3, 0x20

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    const-string v0, "signingKey needs to be 32 byte long."

    invoke-static {v1, v0}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 142
    invoke-static {p8}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    .line 143
    iput-object p1, p0, Lcom/google/android/location/collectionlib/i;->b:Landroid/content/Context;

    .line 144
    iput-object p3, p0, Lcom/google/android/location/collectionlib/i;->c:Ljava/lang/String;

    .line 145
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    .line 150
    :goto_2
    iput-object p4, p0, Lcom/google/android/location/collectionlib/i;->j:[B

    .line 151
    iput-object p5, p0, Lcom/google/android/location/collectionlib/i;->k:[B

    .line 152
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/i;->e:Z

    .line 153
    iput-object p6, p0, Lcom/google/android/location/collectionlib/i;->g:Lcom/google/android/location/collectionlib/ab;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->f:Landroid/os/Handler;

    .line 155
    iput-object p9, p0, Lcom/google/android/location/collectionlib/i;->m:Lcom/google/android/location/p/j;

    .line 156
    return-void

    :cond_4
    move v0, v1

    .line 134
    goto :goto_0

    :cond_5
    move v0, v1

    .line 138
    goto :goto_1

    .line 148
    :cond_6
    iput-object p2, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;[Ljava/lang/String;)Lcom/google/android/location/collectionlib/n;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/i;->a([Ljava/lang/String;)Lcom/google/android/location/collectionlib/n;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;)Lcom/google/android/location/collectionlib/n;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 552
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 555
    array-length v6, p1

    move v4, v3

    move-object v0, v2

    move-object v1, v2

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 556
    const-string v8, "sessionId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 558
    invoke-direct {p0, v7}, Lcom/google/android/location/collectionlib/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v2

    .line 555
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_1
    const-string v8, "uploadedSeq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 563
    invoke-direct {p0, v7}, Lcom/google/android/location/collectionlib/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 564
    :cond_2
    const-string v8, "sessionSummary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 568
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    :cond_3
    if-nez v1, :cond_4

    .line 572
    invoke-static {}, Lcom/google/android/location/collectionlib/bq;->b()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-direct {p0, v1}, Lcom/google/android/location/collectionlib/i;->b(Ljava/lang/String;)Z

    .line 575
    :cond_4
    new-instance v2, Lcom/google/android/location/collectionlib/n;

    invoke-direct {v2, p0, v5, v1}, Lcom/google/android/location/collectionlib/n;-><init>(Lcom/google/android/location/collectionlib/i;Ljava/util/List;Ljava/lang/String;)V

    .line 576
    if-eqz v0, :cond_6

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 578
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 579
    array-length v4, v1

    move v0, v3

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v3, v1, v0

    .line 580
    invoke-static {v3}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 582
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 583
    invoke-virtual {v2, v5}, Lcom/google/android/location/collectionlib/n;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 586
    :catch_0
    move-exception v5

    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid number, ignoring seqNum "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 591
    :cond_6
    return-object v2
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/collectionlib/i;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 600
    if-nez v1, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;)V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 64
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v1, "Uploading %d files, sessionId: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v12

    iget-object v4, p1, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    aput-object v4, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/android/location/collectionlib/p;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->g:Lcom/google/android/location/collectionlib/ab;

    invoke-direct {v0, p0, p1, v1, v12}, Lcom/google/android/location/collectionlib/p;-><init>(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;Lcom/google/android/location/collectionlib/ab;B)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/i;->q:Lcom/google/android/location/collectionlib/p;

    new-instance v0, Lcom/google/android/location/collectionlib/bq;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->b:Landroid/content/Context;

    sget-object v2, Lcom/google/android/location/collectionlib/bt;->b:Lcom/google/android/location/collectionlib/bt;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/i;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/location/collectionlib/i;->q:Lcom/google/android/location/collectionlib/p;

    iget-object v8, p1, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/location/collectionlib/i;->m:Lcom/google/android/location/p/j;

    move-object v5, v3

    move-object v6, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/location/collectionlib/bq;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/bt;Lcom/google/android/location/collectionlib/cj;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    sget-wide v4, Lcom/google/android/location/collectionlib/aq;->a:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/location/collectionlib/i;->h:J

    iget-object v1, p1, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/i;->c()V

    iget-boolean v4, p0, Lcom/google/android/location/collectionlib/i;->n:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/bq;Lcom/google/android/location/collectionlib/n;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/i;->n:Z

    if-eqz v1, :cond_4

    const-string v1, "Upload stoped by client."

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/n;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/i;->q:Lcom/google/android/location/collectionlib/p;

    iget-object v5, p1, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "Fatal error while uploading, will quit early."

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bq;->d()V

    :goto_2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/i;->c()V

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/i;->e:Z

    if-nez v0, :cond_8

    move v0, v11

    :goto_3
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/i;->e:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/n;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v11

    :cond_6
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/n;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v12

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    if-eqz v0, :cond_7

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    move v0, v12

    goto :goto_3

    :cond_9
    move v0, v12

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v1, "Writing uploaded seqNum."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_b
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    const-string v5, "uploadedSeq"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_6
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " quitting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_d
    return-void

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_7
    :try_start_4
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v4, "Failed write uploaded seqNum: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_e
    if-eqz v1, :cond_c

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_8
    if-eqz v1, :cond_f

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_f
    :goto_9
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->g:Lcom/google/android/location/collectionlib/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/collectionlib/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/collectionlib/l;-><init>(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/location/collectionlib/bq;Lcom/google/android/location/collectionlib/n;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 470
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v4, "Processing file %s."

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->j:[B

    if-eqz v0, :cond_e

    .line 474
    iget-object v5, p0, Lcom/google/android/location/collectionlib/i;->j:[B

    iget-object v6, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v0, Lcom/google/android/location/f/a;

    invoke-direct {v0, v5, v1, v6}, Lcom/google/android/location/f/a;-><init>([B[BLcom/google/android/location/p/a/c;)V

    .line 476
    :goto_0
    iget-object v5, p0, Lcom/google/android/location/collectionlib/i;->k:[B

    if-eqz v5, :cond_1

    .line 477
    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->k:[B

    iget-object v5, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    invoke-static {v1, v5}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v1

    .line 479
    :cond_1
    new-instance v5, Lcom/google/android/location/collectionlib/a;

    invoke-direct {v5, v4, v0, v1}, Lcom/google/android/location/collectionlib/a;-><init>(Ljava/lang/String;Lcom/google/android/location/f/a;Lcom/google/android/location/f/a;)V

    .line 481
    sget-object v0, Lcom/google/android/location/collectionlib/o;->c:Lcom/google/android/location/collectionlib/o;

    .line 483
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->a()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 487
    iget-boolean v4, p0, Lcom/google/android/location/collectionlib/i;->n:Z

    if-eqz v4, :cond_6

    .line 488
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Stopped processing the rest of file "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 489
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/location/collectionlib/bq;->c()V

    .line 490
    sget-object v0, Lcom/google/android/location/collectionlib/o;->b:Lcom/google/android/location/collectionlib/o;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/location/collectionlib/b; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 539
    :goto_2
    invoke-virtual {p2, p3, v0}, Lcom/google/android/location/collectionlib/n;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/o;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->q:Lcom/google/android/location/collectionlib/p;

    iget-object v1, p2, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v1, "Finish reading file %s. Upload is still in process."

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_5
    move v0, v3

    .line 542
    :goto_3
    return v0

    .line 493
    :cond_6
    :try_start_2
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 494
    invoke-virtual {v4, v1}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    .line 495
    invoke-virtual {v4}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_8

    .line 496
    new-instance v0, Ljava/io/IOException;

    const-string v1, "isValid returned after parsing GLocRequest"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/location/collectionlib/b; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 521
    :try_start_3
    sget-object v0, Lcom/google/android/location/collectionlib/o;->d:Lcom/google/android/location/collectionlib/o;

    .line 522
    const-string v4, "File not found."

    .line 523
    sget-boolean v6, Lcom/google/android/location/j/a;->e:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    invoke-virtual {v6, v4, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    :cond_7
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 538
    :catch_1
    move-exception v1

    goto :goto_2

    .line 498
    :cond_8
    const/4 v1, 0x6

    :try_start_5
    invoke-virtual {v4, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 501
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Lcom/google/g/a/b/b/a;->j(I)V

    .line 505
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v6

    .line 506
    invoke-virtual {p2, p3, v6}, Lcom/google/android/location/collectionlib/n;->a(Ljava/lang/String;I)V

    .line 507
    invoke-virtual {p2, v6}, Lcom/google/android/location/collectionlib/n;->b(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 508
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v4, "%d has been uploaded, skipping."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 509
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p2, v6, v1}, Lcom/google/android/location/collectionlib/n;->a(IZ)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/location/collectionlib/b; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 524
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 525
    :try_start_6
    sget-object v0, Lcom/google/android/location/collectionlib/o;->d:Lcom/google/android/location/collectionlib/o;

    .line 526
    const-string v4, "Error reading file."

    .line 527
    sget-boolean v6, Lcom/google/android/location/j/a;->e:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    invoke-virtual {v6, v4, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 534
    :cond_a
    :try_start_7
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 538
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 511
    :cond_b
    :try_start_8
    sget-boolean v7, Lcom/google/android/location/j/a;->b:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v8, "Submitting #%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 512
    :cond_c
    invoke-virtual {p1, v4, v1}, Lcom/google/android/location/collectionlib/bq;->b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z

    move-result v1

    .line 513
    if-nez v1, :cond_2

    .line 514
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->q:Lcom/google/android/location/collectionlib/p;

    iget-object v1, p2, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    const-string v4, "Fatal: can not submit task."

    invoke-virtual {v0, v1, v6, v4}, Lcom/google/android/location/collectionlib/p;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/location/collectionlib/b; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 516
    :try_start_9
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_4
    move v0, v2

    .line 537
    goto/16 :goto_3

    .line 528
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 529
    :try_start_a
    sget-object v0, Lcom/google/android/location/collectionlib/o;->e:Lcom/google/android/location/collectionlib/o;

    .line 530
    const-string v4, "Invalid file format."

    .line 531
    sget-boolean v6, Lcom/google/android/location/j/a;->e:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    invoke-virtual {v6, v4, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 534
    :cond_d
    :try_start_b
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    .line 538
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 533
    :catchall_0
    move-exception v0

    .line 534
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 537
    :goto_5
    throw v0

    :catch_6
    move-exception v0

    goto :goto_4

    .line 538
    :catch_7
    move-exception v1

    goto/16 :goto_2

    :catch_8
    move-exception v1

    goto :goto_5

    :cond_e
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/i;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/i;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/location/collectionlib/i;->l:Z

    return p1
.end method

.method private a(Lcom/google/android/location/collectionlib/n;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 369
    iget-object v0, p1, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-virtual {p1, v0}, Lcom/google/android/location/collectionlib/n;->a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/da;

    move-result-object v2

    .line 371
    const-string v3, "Summary should not be null after all complete."

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget v3, v2, Lcom/google/android/location/collectionlib/da;->a:I

    if-ne v3, v5, :cond_1

    iget v3, v2, Lcom/google/android/location/collectionlib/da;->b:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/google/android/location/collectionlib/da;->c:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/google/android/location/collectionlib/da;->f:I

    if-eqz v3, :cond_2

    :cond_1
    iget v2, v2, Lcom/google/android/location/collectionlib/da;->d:I

    if-ne v2, v5, :cond_4

    .line 378
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 389
    :cond_4
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " won\'t be deleted either because failed to be read or some GLocRequest failed to be upload."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/i;->d()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 442
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 443
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-direct {p0, v4}, Lcom/google/android/location/collectionlib/i;->a(Ljava/io/File;)Z

    .line 442
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 451
    :cond_2
    const/4 v0, 0x1

    .line 455
    :cond_3
    :goto_2
    return v0

    .line 453
    :cond_4
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a([Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 401
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 403
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    :cond_0
    :goto_1
    return v0

    .line 406
    :cond_1
    sget-object v4, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    array-length v1, p0

    sget-object v2, Lcom/google/android/location/collectionlib/i;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 610
    .line 612
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object v0

    .line 616
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 619
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    .line 621
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 624
    :catch_0
    move-exception v1

    .line 625
    :goto_2
    :try_start_2
    sget-boolean v3, Lcom/google/android/location/j/a;->e:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 626
    :cond_2
    if-eqz v2, :cond_0

    .line 630
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 623
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 628
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 630
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 633
    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 628
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 624
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/i;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 923
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    const-string v3, "sessionId"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const/4 v3, 0x0

    .line 926
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 928
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 939
    :goto_0
    return v0

    .line 929
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 930
    :goto_1
    :try_start_3
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    const-string v4, "Failed to save session id: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 932
    :cond_0
    if-eqz v2, :cond_1

    .line 934
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    move v0, v1

    .line 939
    goto :goto_0

    .line 932
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    .line 934
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 936
    :cond_2
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 932
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 929
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/i;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 270
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/lang/String;)Z

    .line 271
    sget-wide v0, Lcom/google/android/location/collectionlib/aq;->a:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/i;->h:J

    .line 273
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/i;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/i;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/collectionlib/ab;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->g:Lcom/google/android/location/collectionlib/ab;

    return-object v0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 419
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 422
    if-nez v2, :cond_1

    .line 423
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Trying to delete non-directory"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-static {v2}, Lcom/google/android/location/collectionlib/i;->a([Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-direct {p0, v1}, Lcom/google/android/location/collectionlib/i;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v2

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/i;->i:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/collectionlib/i;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/i;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/google/android/location/collectionlib/i;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/i;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/location/collectionlib/i;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/i;->o:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/i;->p:Ljava/lang/Runnable;

    const-string v2, "BatchScanResultUploader.Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/i;->n:Z

    .line 172
    return-void
.end method
