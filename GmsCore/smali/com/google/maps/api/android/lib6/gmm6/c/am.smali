.class public final Lcom/google/maps/api/android/lib6/gmm6/c/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/bt;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/ak;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/r;


# static fields
.field private static final n:Lcom/google/maps/api/android/lib6/gmm6/f/i;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

.field private final e:Ljava/util/ArrayList;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/c/an;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field private volatile h:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field private i:Z

.field private volatile j:Z

.field private k:Z

.field private volatile l:Z

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/f/i;

.field private final o:Ljava/util/Set;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/l/au;

.field private q:Ljava/lang/ref/WeakReference;

.field private r:F

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

.field private final t:Lcom/google/maps/api/android/lib6/c/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/f/h;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->n:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/bs;Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/f/i;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/an;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/an;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->f:Lcom/google/maps/api/android/lib6/gmm6/c/an;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->l:Z

    invoke-static {}, Lcom/google/c/c/ha;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->o:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->m:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->a:I

    const/16 v0, 0x14c

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->b:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->c:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/au;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->p:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/am;->a(I)V

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/c/bs;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/c/s;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/maps/api/android/lib6/gmm6/c/am;
    .locals 6

    const/16 v0, 0x14c

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->h()Lcom/google/android/gms/maps/model/w;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "TileOverlay.Options must specify a TileProvider"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->h()Lcom/google/android/gms/maps/model/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1, p3}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;-><init>(Lcom/google/android/gms/maps/model/w;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/am;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/c/am;->n:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/c/am;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/bs;Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/f/i;I)V

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/c/ak;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bs;->i()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->r:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->l:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bs;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->k:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->g:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->f:Lcom/google/maps/api/android/lib6/gmm6/c/an;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/c/an;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->f:Lcom/google/maps/api/android/lib6/gmm6/c/an;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->o:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a()V

    iget-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->i:Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->o:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->a:I

    if-eq v0, v6, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b()V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->l:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->i:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->j:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Z)V

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bs;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;

    invoke-direct {v1, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/am;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    const/4 v0, 0x1

    iput v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/c/bs;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->f()V

    :cond_4
    invoke-interface {v0, p1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    :cond_6
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b(Ljava/util/List;)V

    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->k:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->q:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->g:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->m:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->b:I

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->c:Z

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->p:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/f/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->g:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->j:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->q:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->j:Z

    return-void
.end method

.method public final b(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->j:Z

    return-void
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/c/ak;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bs;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->r:F

    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->d:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->e()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->s:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/am;->t:Lcom/google/maps/api/android/lib6/c/bs;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/bs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
