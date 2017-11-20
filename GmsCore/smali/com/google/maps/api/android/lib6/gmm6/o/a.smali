.class public final Lcom/google/maps/api/android/lib6/gmm6/o/a;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# static fields
.field private static h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private static i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private static j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private static k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private b:Lcom/google/maps/api/android/lib6/a/a/d;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x64

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/t;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/t;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->f:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->l:F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->b:Lcom/google/maps/api/android/lib6/a/a/d;

    return-void
.end method

.method private d()V
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->e:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->e:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :cond_1
    return-void

    :cond_2
    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e()D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/a;->d()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->b:Lcom/google/maps/api/android/lib6/a/a/d;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->b:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, p2, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, p2, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->e:F

    div-float v1, v2, v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/16 v1, 0x302

    const/16 v3, 0x303

    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->g:I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x6

    invoke-virtual {v1, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->f:I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->l:F

    invoke-interface {v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/a;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->l:F

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->f:I

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a;->g:I

    return-void
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method
