.class public final Lcom/google/googlenav/common/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final i:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:Lcom/google/googlenav/common/a;

.field protected e:Lcom/google/googlenav/common/c/c;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private j:I

.field private k:I

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "MAPS"

    .line 26
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/c/c;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/common/d/c;-><init>(Lcom/google/googlenav/common/c/c;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/c/c;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    .line 44
    const/16 v0, 0x7f

    iput v0, p0, Lcom/google/googlenav/common/d/c;->j:I

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/googlenav/common/d/c;->k:I

    .line 46
    iput v1, p0, Lcom/google/googlenav/common/d/c;->l:I

    .line 65
    iput-boolean v1, p0, Lcom/google/googlenav/common/d/c;->h:Z

    .line 79
    iput-object p1, p0, Lcom/google/googlenav/common/d/c;->e:Lcom/google/googlenav/common/c/c;

    .line 80
    iput-object p2, p0, Lcom/google/googlenav/common/d/c;->g:Ljava/lang/String;

    .line 81
    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/googlenav/common/d/c;->f:[Ljava/lang/Thread;

    .line 82
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    .line 91
    iput-object v2, p0, Lcom/google/googlenav/common/d/c;->m:Ljava/util/Hashtable;

    .line 92
    iput-object v2, p0, Lcom/google/googlenav/common/d/c;->n:Ljava/util/Hashtable;

    .line 94
    return-void
.end method

.method private d(Lcom/google/googlenav/common/d/a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->n:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private d()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/google/googlenav/common/d/c;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "waitForSomethingToDo(): task queue empty @%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "waitForSomethingToDo(): timer task queue empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/googlenav/common/d/c;->h:Z

    return v0

    .line 318
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/d/d;

    .line 319
    sget-object v1, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "waitForSomethingToDo(): scheduled = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 321
    sget-object v2, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "waitForSomethingToDo(): #1 delta = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "exception thrown while waiting"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Lcom/google/googlenav/common/d/b;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 338
    const/4 v1, 0x0

    .line 340
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getNextTaskToRun(): moving expired tasks @%s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getNextTaskToRun(): timer queue length = %s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getNextTaskToRun(): priority queue length = %s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/d/d;

    .line 347
    sget-object v2, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "getNextTaskToRun(): timerTask = %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 349
    sget-object v4, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "getNextTaskToRun(): current = %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v7}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    sget-object v4, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "getNextTaskToRun(): scheduled = %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 352
    sget-object v4, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "gettNextTaskToRun(): #2 delta = %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v2, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/b;)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getNextTask(): getting available task @%s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/d/b;

    .line 365
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/d/b;->a(I)V

    .line 366
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 369
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private e(Lcom/google/googlenav/common/d/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/googlenav/common/d/c;->j:I

    return v0
.end method

.method final a(Lcom/google/googlenav/common/d/a;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {p1}, Lcom/google/googlenav/common/e/a;->b(Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/a;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 187
    return-void

    .line 176
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/a;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    :pswitch_2
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/d/a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final a(Lcom/google/googlenav/common/d/b;)V
    .locals 7

    .prologue
    .line 197
    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/common/e/a;->b(Z)V

    .line 199
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/b;->h()I

    move-result v5

    .line 200
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 202
    :goto_0
    if-ge v3, v1, :cond_1

    .line 203
    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/d/b;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/b;->h()I

    move-result v0

    if-gt v5, v0, :cond_0

    .line 205
    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    move v3, v1

    move v1, v0

    .line 209
    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v3

    .line 207
    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/d/b;->a(I)V

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method final a(Lcom/google/googlenav/common/d/d;)V
    .locals 10

    .prologue
    .line 225
    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/common/e/a;->b(Z)V

    .line 228
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v5

    .line 229
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 231
    :goto_0
    if-ge v3, v1, :cond_1

    .line 232
    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/d/d;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->i()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_0

    .line 234
    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_1
    move v3, v1

    move v1, v0

    .line 238
    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v3

    .line 236
    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/d/d;->a(I)V

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/googlenav/common/d/c;->k:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/d/a;)I
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/a;->c()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/googlenav/common/d/c;->l:I

    return v0
.end method

.method final c(Lcom/google/googlenav/common/d/a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlenav/common/d/a;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 291
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 272
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a;->a(Z)V

    .line 273
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 274
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/d/a;->a(I)V

    .line 275
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 276
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 279
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a;->a(Z)V

    .line 280
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 281
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/d/a;->a(I)V

    .line 282
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 283
    monitor-exit v2

    goto :goto_0

    .line 287
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/d/a;->a(I)V

    .line 288
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 376
    const/4 v0, 0x0

    .line 379
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "run(): loop [running=%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/googlenav/common/d/c;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/google/googlenav/common/d/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    if-eqz v0, :cond_1

    .line 387
    :try_start_0
    sget-object v2, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "run(): clean up"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/b;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/d/b;->a(I)V

    .line 391
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/b;->f()V

    .line 395
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/googlenav/common/d/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "run(): exiting loop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    sget-object v0, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "run(): end %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    return-void

    .line 392
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/b;->d()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/d/b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 403
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/google/googlenav/common/d/c;->e()Lcom/google/googlenav/common/d/b;

    move-result-object v0

    .line 405
    sget-object v2, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/d/c;->d(Lcom/google/googlenav/common/d/a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    sget-object v1, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "run(): running task @%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlenav/common/d/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    if-eqz v0, :cond_0

    .line 412
    :try_start_3
    invoke-virtual {v0}, Lcom/google/googlenav/common/d/b;->g()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 418
    :goto_2
    sget-object v1, Lcom/google/googlenav/common/d/c;->i:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/d/c;->e(Lcom/google/googlenav/common/d/a;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    :catch_0
    move-exception v1

    .line 414
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "runtime exception thrown by task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v2, v1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
