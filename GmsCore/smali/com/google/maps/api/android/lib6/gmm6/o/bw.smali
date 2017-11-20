.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bw;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private static final b:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# instance fields
.field private final c:Ljava/util/List;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

.field private h:Z

.field private i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private j:F

.field private k:F

.field private l:B

.field private m:Z

.field private n:Z

.field private o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private q:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private r:I

.field private final s:Ljava/lang/Object;

.field private u:I

.field private v:I

.field private final w:Ljava/util/List;

.field private x:Z

.field private y:Z

.field private z:Lcom/google/maps/api/android/lib6/gmm6/o/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;III)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->x:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->y:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->g()I

    move-result v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c(I)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c(I)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->v:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->u:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->v:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->u:I

    invoke-direct {v5, v0, v6, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;FIZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->r:I

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->y:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    const-string v2, "t"

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v2, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v2, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_2
    return v0
.end method

.method static a(IZ)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/bw;Lcom/google/maps/api/android/lib6/gmm6/h/v;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    return-object p1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Z)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_8

    :cond_0
    move v0, v1

    :goto_2
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->j:F

    div-float/2addr v3, v7

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    move v0, v1

    :goto_3
    if-eqz v0, :cond_a

    :cond_1
    move v0, v1

    :goto_4
    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->j:F

    mul-float/2addr v3, v7

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->j:F

    div-float/2addr v3, v7

    cmpg-float v0, v0, v3

    if-gez v0, :cond_b

    :cond_4
    :goto_5
    if-eqz v1, :cond_d

    :cond_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->y:Z

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(IZ)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_6
    if-ge v1, v5, :cond_c

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    int-to-float v6, v4

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_b
    move v1, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_c
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->j:F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->h:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/bx;

    invoke-direct {v1, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bx;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bw;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_d
    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x3fa00000    # 1.25f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->n:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->n:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v2

    iget-byte v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->l:B

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->k:F

    mul-float/2addr v3, v6

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->k:F

    div-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 5

    const/high16 v4, 0x20000000

    const v3, 0x71c71c7

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->g()I

    move-result v1

    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    sub-int/2addr v1, v4

    const/high16 v3, -0x20000000

    invoke-direct {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    const v3, 0x1fffffff

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    :goto_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v2

    :cond_1
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->r:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->n:Z

    return v0
.end method

.method private static e(I)Z
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Lcom/google/maps/api/android/lib6/gmm6/o/t;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->z:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 12

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->m:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Z)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/p;)B

    move-result v6

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-eqz v3, :cond_a

    const/4 v0, 0x1

    :goto_1
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v1, v6, 0x4

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->e()I

    move-result v7

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    mul-int v9, v7, v0

    invoke-direct {v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->d()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3

    mul-int/2addr v0, v10

    invoke-direct {v9, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v11

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    invoke-static {v5, v9, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;I)V

    invoke-static {v5, v8, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    const/4 v0, 0x1

    :cond_3
    if-eqz v2, :cond_4

    mul-int v2, v7, v0

    invoke-static {v5, v9, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;I)V

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-static {v5, v8, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-eqz v1, :cond_5

    mul-int/2addr v0, v7

    invoke-static {v5, v9, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;I)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-static {v5, v8, v0, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    :cond_5
    iput-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iput-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->q:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->k:F

    iput-byte v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->l:B

    :cond_6
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->q:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->q:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, p2, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->r:I

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    :cond_7
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_8
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_d
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    :cond_e
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->z:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->m:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Z)V

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 3

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->u:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->r:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->g:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->n:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->m:Z

    :cond_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->r:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(I)V
    .locals 4

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->v:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    int-to-float v3, p1

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final f()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
