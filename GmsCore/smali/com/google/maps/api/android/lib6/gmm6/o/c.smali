.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c;
.super Lcom/google/maps/api/android/lib6/gmm6/o/ay;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/aw;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ax;


# static fields
.field private static final a:F

.field private static y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;


# instance fields
.field private final d:Landroid/content/res/Resources;

.field private final e:Z

.field private f:I

.field private volatile g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field private final h:Ljava/util/Map;

.field private i:Ljava/util/List;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/b/j;

.field private k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/l/g;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

.field private o:Z

.field private volatile p:Lcom/google/maps/api/android/lib6/a/a/g;

.field private volatile q:Z

.field private r:F

.field private s:F

.field private u:F

.field private final v:I

.field private w:F

.field private final x:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    const v1, 0x73217bce

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/bo;Z)V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->h:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->o:Z

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->q:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->d:Landroid/content/res/Resources;

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->e:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/o/d;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/e;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v1

    iput-boolean v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a:Z

    sget v2, Lcom/google/android/gms/maps/y;->e:I

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/e;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v1

    iput-boolean v4, v1, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a:Z

    sget v2, Lcom/google/android/gms/maps/y;->a:I

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a([Lcom/google/maps/api/android/lib6/gmm6/o/d;)V

    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->r:F

    iput v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->s:F

    iput v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->u:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->d:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/gms/maps/x;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->v:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/j;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/j;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->j:Lcom/google/maps/api/android/lib6/gmm6/b/j;

    return-void
.end method

.method private declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Landroid/content/res/Resources;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ZZZ)Lcom/google/maps/api/android/lib6/gmm6/o/d;
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v1, p3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->b()V

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v3, v0}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->o()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->i:I

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->b(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->j:I

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->c(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->k:Lcom/google/maps/api/android/lib6/gmm6/o/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->r:F

    invoke-virtual {p2, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->w:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, p2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->o()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v3

    iget v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->f:I

    iget v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->e:I

    if-eq v0, v4, :cond_5

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    const/16 v4, 0x303

    invoke-interface {v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x1e01

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/high16 v1, 0x10000

    const/high16 v4, 0x10000

    const/high16 v5, 0x10000

    const/high16 v6, 0x10000

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->g:I

    if-eqz v1, :cond_2

    const/16 v1, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x2100

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->g:I

    invoke-direct {p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v1, v4

    add-float/2addr v1, v10

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    sub-float v4, v10, v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float/2addr v6, v7

    invoke-interface {v2, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v4, 0x0

    invoke-interface {v2, v5, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {v2, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v4, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-interface {v2, v4, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    div-float v4, v10, v1

    div-float v7, v10, v1

    div-float v1, v10, v1

    invoke-interface {v2, v4, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    neg-float v1, v5

    neg-float v4, v6

    const/4 v5, 0x0

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v1, 0x10000

    const/high16 v4, 0x10000

    const/high16 v5, 0x10000

    const/high16 v6, 0x10000

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/16 v1, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x1e01

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    if-eqz v1, :cond_4

    iget v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->h:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    neg-float v1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->h:I

    invoke-direct {p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-interface {v2, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_4
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->o()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/d;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    neg-float v1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_7

    iget v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->f:I

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_2
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v1

    neg-float v1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_2
    iget v0, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d;->e:I

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized n()Lcom/google/maps/api/android/lib6/gmm6/l/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()Lcom/google/maps/api/android/lib6/gmm6/o/d;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n()Lcom/google/maps/api/android/lib6/gmm6/l/g;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(ZZZ)Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->e:Z

    return v0
.end method

.method public final a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget v1, v0, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float v2, p2, v2

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(FII)V
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->r:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->s:F

    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->u:F

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iget-boolean v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->q:Z

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->j:Lcom/google/maps/api/android/lib6/gmm6/b/j;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/j;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/j;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->j:Lcom/google/maps/api/android/lib6/gmm6/b/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->q:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->f:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->f:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->j:Lcom/google/maps/api/android/lib6/gmm6/b/j;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(J)V

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v2, :cond_4

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/o/k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_5
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 0

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    return-void
.end method

.method public final a(Ljava/util/List;FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v0

    if-ge v0, p5, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bk;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ay;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final varargs declared-synchronized a([Lcom/google/maps/api/android/lib6/gmm6/o/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/c/c/eo;->a([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->o()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->u:F

    :goto_1
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->r:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    aget v4, v3, v1

    sub-int/2addr v4, v0

    aget v5, v3, v1

    add-int/2addr v5, v0

    aget v6, v3, v2

    sub-int/2addr v6, v0

    aget v3, v3, v2

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v3

    if-ge v4, v3, :cond_2

    if-ltz v5, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v3

    if-ge v6, v3, :cond_2

    if-ltz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->s:F

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 6

    const/high16 v5, 0x41200000    # 10.0f

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->v:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->w:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;IILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->w:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->j:Lcom/google/maps/api/android/lib6/gmm6/b/j;

    const/4 v0, 0x1

    return v0

    :cond_2
    cmpg-float v2, v1, v5

    if-ltz v2, :cond_1

    sub-float/2addr v1, v5

    const v2, 0x3d4ccccc    # 0.049999997f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->q:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->q:Z

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->g()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->p:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->a(Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/j;->i:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    new-array v4, v1, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->f:I

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->l:Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->o:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final declared-synchronized g()Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->n()Lcom/google/maps/api/android/lib6/gmm6/l/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final j()Lcom/google/maps/api/android/lib6/gmm6/o/aw;
    .locals 0

    return-object p0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
