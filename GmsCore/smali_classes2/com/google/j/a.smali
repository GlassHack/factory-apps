.class public abstract Lcom/google/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/e/f;


# instance fields
.field protected final a:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    .line 26
    return-void
.end method

.method private a()[Lcom/google/g/a/e/g;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v4, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    monitor-enter v4

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/g/a/e/g;

    .line 71
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 72
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/ref/WeakReference;

    if-ne v5, v6, :cond_0

    .line 74
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    .line 71
    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_0
    add-int v5, v3, v1

    check-cast v0, Lcom/google/g/a/e/g;

    aput-object v0, v2, v5

    move v0, v1

    goto :goto_1

    .line 86
    :cond_1
    if-lez v1, :cond_2

    .line 87
    array-length v0, v2

    sub-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/g/a/e/g;

    .line 88
    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v2, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/g/a/e/g;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 37
    iget-object v3, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    monitor-enter v3

    .line 38
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/ref/WeakReference;

    if-ne v4, v5, :cond_0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 39
    :goto_1
    if-ne v0, v2, :cond_3

    .line 40
    iget-object v0, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    :goto_2
    monitor-exit v3

    return-void

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/google/j/a;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/j/a;->a()[Lcom/google/g/a/e/g;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/google/g/a/e/g;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
