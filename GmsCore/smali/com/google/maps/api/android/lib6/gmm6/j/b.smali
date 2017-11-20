.class public final Lcom/google/maps/api/android/lib6/gmm6/j/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/b;
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/m/y;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field volatile c:Lcom/google/maps/api/android/lib6/gmm6/j/d;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/m/n;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Collection;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/y;Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->f:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->a:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->d:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->c:Lcom/google/maps/api/android/lib6/gmm6/j/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->c:Lcom/google/maps/api/android/lib6/gmm6/j/d;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/d;->a(Lcom/google/maps/api/android/lib6/gmm6/j/b;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->c:Lcom/google/maps/api/android/lib6/gmm6/j/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->f:Ljava/util/Collection;

    invoke-interface {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/d;->a(Lcom/google/maps/api/android/lib6/gmm6/j/b;Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;ILcom/google/maps/api/android/lib6/gmm6/l/cv;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->f:Ljava/util/Collection;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/j/a;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/cl;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ne p2, v7, :cond_3

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->g:Z

    :cond_3
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/b;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x1

    if-ne p2, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_2

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->g:Z

    :cond_2
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    check-cast p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->l()Lcom/google/maps/api/android/lib6/gmm6/l/ca;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v3

    if-ne v3, v5, :cond_3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h:I

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    if-eq v3, v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/b;->a()V

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/j/c;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/j/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->d:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v2, v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_3
.end method
