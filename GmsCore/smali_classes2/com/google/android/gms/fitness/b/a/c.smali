.class public final Lcom/google/android/gms/fitness/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/c;


# instance fields
.field final a:Lcom/google/android/gms/fitness/data/DataPoint;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/google/android/gms/fitness/b/e;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/b/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .locals 6

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 132
    new-instance v5, Lcom/google/android/gms/fitness/b/a/m;

    invoke-direct {v5, v4}, Lcom/google/android/gms/fitness/b/a/m;-><init>(Lcom/google/android/gms/fitness/data/Value;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const-string v0, "ApiDataPoint{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
