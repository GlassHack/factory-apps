.class public final Lcom/google/maps/api/android/lib6/gmm6/o/br;
.super Lcom/google/maps/api/android/lib6/gmm6/o/ay;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public d:Ljava/util/List;

.field public e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

.field private final f:Ljava/util/LinkedList;

.field private g:Z

.field private final h:Ljava/util/HashMap;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

.field private k:I

.field private l:Z

.field private m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->k:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    :goto_1
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v3, v3, v8

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    iget-object v5, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    iget-object v6, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "#:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->k:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " C:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " numM:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "GLMarkerOverlay"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iput-boolean v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->g:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1
.end method

.method private d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->s()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->l()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 2

    const/high16 v0, 0x428c0000    # 70.0f

    sub-float v0, p2, v0

    invoke-virtual {p3, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->g:Z

    return-void
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->s()I

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/br;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->k()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 6

    const/4 v5, 0x1

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->g()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v3

    if-eqz v3, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    monitor-exit p0

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/bi;

    invoke-direct {v2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    const/4 v0, 0x0

    iput v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->l()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    iput v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, v0

    goto :goto_4

    :cond_8
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/util/List;FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->A_()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v2

    if-ge v2, p5, :cond_0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bk;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ay;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->r()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h()V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->f()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ag;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bs;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bs;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bs;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    return v0

    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final x_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->l:Z

    return v0
.end method
