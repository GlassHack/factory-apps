.class public abstract Lcom/google/android/gms/common/data/i;
.super Lcom/google/android/gms/common/data/b;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/i;->b:Z

    .line 28
    return-void
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds for this buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/i;->b:Z

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->g()I

    move-result v3

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    .line 73
    if-lez v3, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/i;->e()Ljava/lang/String;

    move-result-object v4

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 80
    :goto_0
    if-ge v2, v3, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v0

    .line 82
    iget-object v5, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v5, v4, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/i;->b:Z

    .line 91
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/common/data/i;->b()V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/i;->b(I)I

    move-result v1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/data/i;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->g()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/i;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_1
.end method

.method protected abstract a(II)Ljava/lang/Object;
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/common/data/i;->b()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract e()Ljava/lang/String;
.end method
