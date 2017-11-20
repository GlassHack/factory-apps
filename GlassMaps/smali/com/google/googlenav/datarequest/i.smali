.class public final Lcom/google/googlenav/datarequest/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private b:Ljava/util/Vector;

.field private c:Z

.field private final d:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    .line 522
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/f;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;Z)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 535
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 552
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/i;Z)Lcom/google/googlenav/datarequest/j;
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->b(Z)Lcom/google/googlenav/datarequest/j;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/google/googlenav/datarequest/j;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1054
    monitor-enter p0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    monitor-exit p0

    .line 1075
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    if-nez v1, :cond_1

    .line 1059
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1061
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/googlenav/datarequest/j;

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/datarequest/j;-><init>(Lcom/google/googlenav/datarequest/i;Ljava/util/Vector;)V

    .line 1062
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    .line 1063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    .line 1068
    iget-object v0, v1, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 1069
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getQueueTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 1070
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DRD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 1071
    invoke-static {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->getQueueTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-static {v3, v0}, Lcom/google/googlenav/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1075
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/i;)Z
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/i;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    .prologue
    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_0
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1019
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->d(Lcom/google/googlenav/datarequest/h;)V

    .line 1023
    :cond_1
    return-void

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
