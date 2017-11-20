.class final Lcom/google/android/location/collectionlib/bh;
.super Lcom/google/android/location/collectionlib/bx;
.source "SourceFile"


# instance fields
.field private e:J

.field private f:Lcom/google/g/a/b/b/a;

.field private g:Lcom/google/g/a/b/b/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/location/collectionlib/cj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/cj;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/collectionlib/bx;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;)V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/bh;->e:J

    .line 23
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    .line 24
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bh;->g:Lcom/google/g/a/b/b/a;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bh;->g:Lcom/google/g/a/b/b/a;

    .line 72
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bh;->g:Lcom/google/g/a/b/b/a;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->a(Lcom/google/g/a/b/b/a;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->a:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->d()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    .line 77
    return-void
.end method

.method protected final a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x4

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 38
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/bh;->e:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 39
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/bh;->e:J

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bh;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p1, v10, p2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 43
    invoke-virtual {p2, v9}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    .line 44
    iget-object v4, p0, Lcom/google/android/location/collectionlib/bh;->a:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v4, v1, p1}, Lcom/google/android/location/collectionlib/ao;->a(ILcom/google/g/a/b/b/a;)V

    .line 47
    :cond_1
    iget-wide v4, p0, Lcom/google/android/location/collectionlib/bh;->e:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 48
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Session too long, onGLocRequestComposed will be called with null."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 49
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    .line 66
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    if-nez v1, :cond_5

    .line 53
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    .line 54
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v9, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 56
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v10, v1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {p1, v8}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    .line 60
    :goto_1
    if-ge v0, v1, :cond_3

    .line 61
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bh;->f:Lcom/google/g/a/b/b/a;

    invoke-virtual {p1, v8, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
