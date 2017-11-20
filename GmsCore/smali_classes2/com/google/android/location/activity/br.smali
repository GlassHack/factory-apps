.class public final Lcom/google/android/location/activity/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;

.field private final b:Ljava/util/Map;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 2

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/location/activity/br;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/br;->b:Ljava/util/Map;

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/br;->c:Ljava/lang/String;

    .line 453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/br;->d:J

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/location/activity/bp;J)V
    .locals 6

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/location/activity/br;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/android/location/activity/br;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/location/activity/br;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bq;

    .line 458
    iget-wide v2, p0, Lcom/google/android/location/activity/br;->d:J

    sub-long v2, p2, v2

    .line 459
    iget-wide v4, v0, Lcom/google/android/location/activity/bq;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/location/activity/bq;->a:J

    iget v1, v0, Lcom/google/android/location/activity/bq;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/location/activity/bq;->b:I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/br;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/google/android/location/activity/br;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/activity/bq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/location/activity/bq;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/br;->c:Ljava/lang/String;

    .line 465
    iput-wide p2, p0, Lcom/google/android/location/activity/br;->d:J

    .line 466
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/activity/br;->a:Lcom/google/android/location/activity/bk;

    iget-object v1, v1, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/google/android/location/activity/br;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/bq;

    .line 475
    iget-wide v2, v1, Lcom/google/android/location/activity/bq;->a:J

    div-long/2addr v2, v8

    .line 476
    iget v1, v1, Lcom/google/android/location/activity/bq;->b:I

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/location/activity/br;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-wide v6, p0, Lcom/google/android/location/activity/br;->d:J

    sub-long v6, p3, v6

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 479
    add-int/lit8 v0, v1, 0x1

    .line 481
    :goto_1
    const-string v1, " TimeInState: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "sec"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, " StateEnteredCount: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, " Avg: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v6, v0

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sec/entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method
