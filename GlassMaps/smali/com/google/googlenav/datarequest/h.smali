.class public final Lcom/google/googlenav/datarequest/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private volatile b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2115
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "new DispatcherServer [address=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2116
    iput-object p2, p0, Lcom/google/googlenav/datarequest/h;->b:Ljava/lang/String;

    .line 2117
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/googlenav/datarequest/e;)V
    .locals 0

    .prologue
    .line 2111
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/h;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/h;)J
    .locals 2

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 2125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    .line 2135
    const/4 v2, 0x1

    .line 2137
    invoke-static {v0, v2}, Lcom/google/googlenav/datarequest/i;->b(Lcom/google/googlenav/datarequest/i;Z)Lcom/google/googlenav/datarequest/j;

    move-result-object v0

    .line 2138
    if-eqz v0, :cond_2

    .line 2139
    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/j;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/h;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 2111
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 2203
    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2207
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o()V

    .line 2210
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I)V

    .line 2211
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 2154
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->a()V

    .line 2157
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/h;)V
    .locals 0

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->b()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2165
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2173
    :goto_0
    return v0

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    .line 2169
    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->b(Lcom/google/googlenav/datarequest/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2173
    goto :goto_0
.end method

.method private d()J
    .locals 6

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2193
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 2190
    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 2191
    invoke-static {v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/datarequest/h;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    .line 2183
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/google/googlenav/datarequest/h;)V
    .locals 0

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->a()V

    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 2219
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->b()V

    .line 2220
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/datarequest/h;)V
    .locals 0

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/h;->e()V

    return-void
.end method
