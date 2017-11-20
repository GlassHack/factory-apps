.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

.field b:Ljava/lang/Object;

.field private final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Z)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    iget-object v2, p2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Ljava/lang/String;)V

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(I)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    iget v3, p2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(III)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->j()V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z
    .locals 6

    const/4 v2, 0x0

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panoId"

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    move-object v1, p2

    move v3, v2

    move v4, p3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Z)Z

    move-result v0

    return v0
.end method

.method final declared-synchronized a(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
