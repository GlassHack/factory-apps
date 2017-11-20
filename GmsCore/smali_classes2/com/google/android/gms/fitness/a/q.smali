.class final Lcom/google/android/gms/fitness/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/au;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/a/o;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/gms/fitness/a/q;->a:Lcom/google/android/gms/fitness/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/fitness/a/q;->a:Lcom/google/android/gms/fitness/a/o;

    const/4 v1, 0x2

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/fitness/a/q;->a:Lcom/google/android/gms/fitness/a/o;

    const/4 v1, 0x4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v1, p0, Lcom/google/android/gms/fitness/a/q;->a:Lcom/google/android/gms/fitness/a/o;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v1, v2}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/fitness/a/q;->a:Lcom/google/android/gms/fitness/a/o;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v1, v2}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-static {}, Lcom/google/android/gms/fitness/a/e;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/fitness/n/av;
    .locals 5

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/q;->a()Ljava/util/Set;

    move-result-object v0

    .line 81
    const-string v1, "Returning %d aggregate data sources to invalidate."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    new-instance v1, Lcom/google/android/gms/fitness/n/av;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/fitness/n/av;-><init>(Ljava/util/Set;J)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/n/av;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/google/android/gms/fitness/a/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "Skipping invalidation for a custom data type: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    invoke-static {}, Lcom/google/android/gms/fitness/a/o;->c()Lcom/google/android/gms/fitness/n/av;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/q;->a()Ljava/util/Set;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 103
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "Skipping invalidation as aggregate data source updated: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    invoke-static {}, Lcom/google/android/gms/fitness/a/o;->c()Lcom/google/android/gms/fitness/n/av;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    move-wide v0, v2

    .line 111
    :cond_2
    :goto_1
    new-instance v2, Lcom/google/android/gms/fitness/n/av;

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/fitness/n/av;-><init>(Ljava/util/Set;J)V

    move-object v0, v2

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/fitness/a/o;->d()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->D:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_1
.end method
