.class public final Lcom/google/android/gms/common/util/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    .line 693
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    .line 694
    iput v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    .line 695
    iput v1, p0, Lcom/google/android/gms/common/util/a/e;->d:I

    .line 696
    iput-boolean v1, p0, Lcom/google/android/gms/common/util/a/e;->e:Z

    .line 702
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/util/a/e;->d:I

    .line 712
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V
    .locals 8

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/e;->d:I

    .line 776
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    if-ge v0, v1, :cond_0

    .line 777
    iget-object v7, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    new-instance v0, Lcom/google/android/gms/common/util/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/util/a/d;-><init>(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :goto_0
    monitor-exit p0

    return-void

    .line 779
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/d;

    .line 780
    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    .line 781
    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    iget v2, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    if-lt v1, v2, :cond_1

    .line 782
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 784
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/util/a/d;->a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()I
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)Lcom/google/android/gms/common/util/a/d;
    .locals 2

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/e;->c:I

    add-int/2addr v0, p1

    .line 751
    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    if-lt v0, v1, :cond_0

    .line 752
    iget v1, p0, Lcom/google/android/gms/common/util/a/e;->b:I

    sub-int/2addr v0, v1

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/e;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_1

    .line 755
    const/4 v0, 0x0

    .line 757
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()I
    .locals 1

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/e;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 1

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
