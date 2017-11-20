.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ax;
.implements Ljava/lang/Comparable;


# static fields
.field private static H:[F

.field private static I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private static J:I


# instance fields
.field private A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private F:Z

.field private G:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private final K:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private n:F

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private final y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Landroid/graphics/Bitmap;II)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->h:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->x:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->K:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e:I

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->g:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->r:Z

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->u:Z

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->J:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->J:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->P:I

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->i()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->y:F

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->z:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->D:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->E:I

    :goto_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->A:I

    return-void

    :cond_0
    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->y:F

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->D:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->E:I

    goto :goto_2
.end method

.method private a(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->y:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    return p1
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/o;)Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v2

    invoke-virtual {v0, v3, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    invoke-virtual {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Landroid/graphics/Bitmap;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->e()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static f()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ag;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final A_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->r:Z

    return v0
.end method

.method public final declared-synchronized a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->v:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    neg-float v4, v4

    mul-float v5, v3, v2

    mul-float v6, v4, v0

    sub-float/2addr v5, v6

    mul-float/2addr v0, v3

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    add-float p1, v2, v5

    const/4 v2, 0x1

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float p2, v2, v0

    :cond_0
    const/4 v0, 0x0

    aget v0, v1, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->z:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->A:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II)V
    .locals 1

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->z:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->A:I

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;
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

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/br;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 10

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    iget-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->v:Z

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->x:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Landroid/graphics/Bitmap;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/o;)Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :cond_2
    :goto_1
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->e()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_7

    if-eqz v4, :cond_6

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float v2, v3, v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    invoke-virtual {p2, v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    const/4 v7, 0x0

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    sput-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v2, :cond_8

    const-string v0, "UI"

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null point for ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "); camera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v2, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Landroid/graphics/Bitmap;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/o;)Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v2

    sub-float/2addr v2, v3

    const/high16 v7, 0x42b40000    # 90.0f

    rem-float/2addr v2, v7

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->I:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n:F

    invoke-static {p1, p2, v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v2, :cond_9

    const/high16 v1, -0x2d0000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x10000

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    const/high16 v1, -0x5a0000

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->D:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->E:I

    :goto_3
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x10

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d:I

    shl-int/lit8 v3, v3, 0x10

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    const/high16 v4, -0x10000

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e:I

    shl-int/lit8 v5, v5, 0x10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int v0, v5, v0

    add-int/2addr v0, v4

    const/high16 v4, 0x10000

    invoke-interface {v6, v2, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    const/4 v1, 0x0

    invoke-interface {v6, v3, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v6, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    :goto_4
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-interface {v6, v3, v0, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const/16 v7, 0x2100

    invoke-interface {v6, v3, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-interface {v6, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_3

    :cond_a
    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v6, v0, v2, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->s:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->s:Z

    return v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->G:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->F:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->F:Z

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->G:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->p:Z

    return-void
.end method

.method public final declared-synchronized b(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->x:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(II)V
    .locals 1

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->L:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->M:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->L:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->N:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->M:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->O:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->g:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 11

    const/4 v10, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return v10

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->H:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x47800000    # 65536.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->w:F

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->N:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->z:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->O:I

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->A:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-double v6, v4

    mul-double/2addr v6, v0

    int-to-double v8, v5

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v2, v8

    int-to-double v4, v5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->v:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    double-to-int v3, v6

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->K:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;IILcom/google/maps/api/android/lib6/gmm6/l/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->K:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n:F

    float-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n:F

    float-to-double v6, v5

    mul-double/2addr v0, v6

    double-to-int v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->z:I

    sub-int v2, v1, v2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->B:I

    add-int/2addr v1, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->A:I

    sub-int v3, v0, v3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->C:I

    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->D:I

    add-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->E:I

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->p:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->q:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->q:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->i:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->h:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->P:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->P:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized d()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->K:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final declared-synchronized j()Lcom/google/maps/api/android/lib6/a/a/f;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/a/a/f;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->p:Z

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->q:Z

    return-void
.end method

.method public final s()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->g()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return v0
.end method

.method public final t()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->g()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return v0
.end method
