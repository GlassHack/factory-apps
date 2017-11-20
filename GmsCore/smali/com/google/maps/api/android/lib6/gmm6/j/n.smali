.class public final Lcom/google/maps/api/android/lib6/gmm6/j/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# static fields
.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/j/l;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/m/z;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private e:I

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/l;

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/l;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a:Lcom/google/maps/api/android/lib6/gmm6/j/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->g:Ljava/util/Set;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/o;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/n;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->c:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->c:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/m/z;)V

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->c:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    goto :goto_0
.end method

.method private declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v0, p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/j/l;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :goto_0
    :pswitch_1
    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/p;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/p;->b()V

    goto :goto_1

    :pswitch_2
    instance-of v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/j/m;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/j/m;-><init>()V

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->l()Lcom/google/maps/api/android/lib6/gmm6/l/ca;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    instance-of v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/j/m;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/l;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/j/m;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/l;-><init>(Ljava/util/List;)V

    :goto_3
    move-object v2, v0

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a:Lcom/google/maps/api/android/lib6/gmm6/j/l;

    goto :goto_3

    :pswitch_3
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a:Lcom/google/maps/api/android/lib6/gmm6/j/l;

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
