.class final Lcom/google/android/location/ae;
.super Lcom/google/android/location/collectionlib/cs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/ad;


# direct methods
.method private constructor <init>(Lcom/google/android/location/ad;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/ad;B)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/location/ae;-><init>(Lcom/google/android/location/ad;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 6

    .prologue
    .line 196
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-object v0, v0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Finished indoor/outdoor collection."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-boolean v0, v0, Lcom/google/android/location/ad;->f:Z

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-object v0, v0, Lcom/google/android/location/ad;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-wide v2, v2, Lcom/google/android/location/ad;->l:J

    sub-long/2addr v0, v2

    .line 202
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 204
    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    invoke-static {v0}, Lcom/google/android/location/ad;->b(Lcom/google/android/location/ad;)Lcom/google/android/location/af;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v2

    new-instance v3, Lcom/google/android/location/ag;

    invoke-direct {v3, v0, v1, p1}, Lcom/google/android/location/ag;-><init>(Lcom/google/android/location/af;Ljava/util/Calendar;Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v2, v3}, Lcom/google/android/location/k/i;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    invoke-static {v0}, Lcom/google/android/location/ad;->a(Lcom/google/android/location/ad;)V

    .line 213
    :cond_2
    :goto_1
    return-void

    .line 206
    :cond_3
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-object v2, v2, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v3, "Collection duration too short: %d or no GLocRequestElement."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-object v0, v0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Skipping onGLocRequestComposed because NLP is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    iget-object v0, v0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Failed to do indoor/outdoor collection."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ae;->a:Lcom/google/android/location/ad;

    invoke-static {v0}, Lcom/google/android/location/ad;->a(Lcom/google/android/location/ad;)V

    .line 192
    return-void
.end method
