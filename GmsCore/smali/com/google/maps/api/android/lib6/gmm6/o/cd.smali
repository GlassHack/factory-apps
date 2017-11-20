.class public Lcom/google/maps/api/android/lib6/gmm6/o/cd;
.super Lcom/google/maps/api/android/lib6/gmm6/o/ci;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ao;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/bn;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

.field public b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

.field public c:Lcom/google/maps/api/android/lib6/gmm6/o/ce;

.field public d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

.field public e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

.field public f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/o/bj;

.field private final o:Landroid/content/res/Resources;

.field private p:Lcom/google/maps/api/android/lib6/gmm6/i/g;

.field private q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field private r:Z

.field private s:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private t:J

.field private u:Z

.field private v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

.field private w:Lcom/google/maps/api/android/lib6/gmm6/c/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bj;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->n:Lcom/google/maps/api/android/lib6/gmm6/o/bj;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->t:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->u:Z

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->m:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ao;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/i/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/g;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->p:Lcom/google/maps/api/android/lib6/gmm6/i/g;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->p:Lcom/google/maps/api/android/lib6/gmm6/i/g;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/gmm6/i/m;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bn;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;-><init>(IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;-><init>(IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;-><init>(IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->g:Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/cg;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;-><init>([Lcom/google/maps/api/android/lib6/gmm6/o/ch;)V

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->c()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const/16 v2, 0x100

    const/16 v3, 0x100

    const/4 v5, 0x0

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIFB)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/l;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bl;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/x;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/k;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;-><init>(Landroid/view/View;Lcom/google/maps/api/android/lib6/gmm6/o/l;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w:Lcom/google/maps/api/android/lib6/gmm6/c/k;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w:Lcom/google/maps/api/android/lib6/gmm6/c/k;

    invoke-static {p0, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->c()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/cu;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cu;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->k:Lcom/google/maps/api/android/lib6/gmm6/o/cn;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/cl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/cl;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ci;B)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->k:Lcom/google/maps/api/android/lib6/gmm6/o/cn;

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->l:Lcom/google/maps/api/android/lib6/gmm6/o/co;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/co;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/co;-><init>(B)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->l:Lcom/google/maps/api/android/lib6/gmm6/o/co;

    :cond_4
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->i:Lcom/google/maps/api/android/lib6/gmm6/o/ct;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->start()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->a(I)V

    return-void
.end method

.method private d()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method


# virtual methods
.method public final A()Lcom/google/maps/api/android/lib6/gmm6/o/b/b;
    .locals 5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    return-object v0
.end method

.method public final B()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->r:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->e()V

    return-void
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a()Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->b()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->c()Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->d()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)Lcom/google/maps/api/android/lib6/gmm6/o/br;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)Lcom/google/maps/api/android/lib6/gmm6/o/br;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->f()V

    return-void
.end method

.method public final a(FF)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a_(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->r:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/h;)V

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w:Lcom/google/maps/api/android/lib6/gmm6/c/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g()Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->x_()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a(ZZ)V

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->x_()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v8

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v9

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a(ZZ)V

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->s()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->g()V

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->b()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->i()Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->s()V

    :cond_0
    return-void
.end method

.method public final b(FF)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g()Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->x_()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, p1, p2, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->b(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a(ZZ)V

    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move-object v2, v1

    move v5, v0

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->x_()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v8

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v9

    invoke-direct {v2, v1, v7, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    invoke-virtual {v2, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->b(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a()V

    return-void
.end method

.method public final c(FF)V
    .locals 11

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v5

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    invoke-virtual {v4, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->r:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g()Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g()Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ce;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ce;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ce;->a()Z

    move-result v0

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, v8, -0x1

    move v3, v1

    move v1, v0

    :goto_1
    if-nez v1, :cond_5

    if-ltz v3, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->l()Z

    move-result v10

    if-eqz v10, :cond_4

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v10

    if-eq v0, v10, :cond_c

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_2

    :cond_5
    if-nez v1, :cond_8

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->s:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->n:Lcom/google/maps/api/android/lib6/gmm6/o/bj;

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->a:Z

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->n:Lcom/google/maps/api/android/lib6/gmm6/o/bj;

    invoke-virtual {v0, p1, p2, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    add-int/lit8 v0, v8, -0x1

    move v3, v0

    :goto_3
    if-nez v1, :cond_9

    if-ltz v3, :cond_9

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->l()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v6

    if-eq v0, v6, :cond_b

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    invoke-interface {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/cf;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_a
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->s:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w()V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final d(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w:Lcom/google/maps/api/android/lib6/gmm6/c/k;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(FF)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d()F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    invoke-virtual {v3, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ce;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ce;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ce;->b()Z

    move-result v0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v6

    if-eq v0, v6, :cond_4

    invoke-virtual {v0, p1, p2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->d(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    invoke-interface {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cf;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w()V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->b(Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->c(Z)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->o:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->d(Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Z)V

    return-void
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->p:Lcom/google/maps/api/android/lib6/gmm6/i/g;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->onWindowFocusChanged(Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->y_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->w:Lcom/google/maps/api/android/lib6/gmm6/c/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cf;

    :cond_0
    return-void
.end method

.method public final v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/h;->c()V

    :cond_0
    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->w()V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->v:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/h;->b()V

    :cond_0
    return-void
.end method

.method public final y()Lcom/google/maps/api/android/lib6/gmm6/o/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b()Lcom/google/maps/api/android/lib6/gmm6/o/c;

    move-result-object v0

    return-object v0
.end method

.method public final z()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->t:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Z)V

    :goto_0
    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->t:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Z)V

    goto :goto_0
.end method
