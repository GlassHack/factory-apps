.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bc;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/dl;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/content/res/Resources;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

.field private volatile o:I

.field private final p:I

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/o/bf;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/bf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->m:Z

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->b:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    sget v0, Lcom/google/android/gms/maps/x;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    sget v0, Lcom/google/android/gms/maps/w;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->p:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bd;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bd;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bc;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->t:Lcom/google/maps/api/android/lib6/gmm6/o/bv;

    return-void
.end method

.method private a(FF)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->g:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    sub-float v2, p2, v2

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/be;->a:[I

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->h:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->j:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->j:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->f:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    sub-float v3, p1, v3

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->f:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->h:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->g:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 8

    const/4 v5, 0x1

    const/high16 v7, 0x420c0000    # 35.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/y;->h:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Landroid/content/res/Resources;I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    const/16 v0, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v0, 0x303

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_3
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->k:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->p:I

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    :goto_1
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->e:F

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->k:Z

    if-eqz v0, :cond_6

    const v0, 0x3faa3d71    # 1.33f

    :goto_2
    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, p2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    cmpl-float v3, v0, v7

    if-lez v3, :cond_4

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v3

    neg-float v3, v3

    invoke-interface {v2, v3, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    sub-float/2addr v0, v7

    invoke-interface {v2, v0, v1, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    invoke-interface {v2, v0, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    invoke-interface {v2, v0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->B_()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->i:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/be;->a:[I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v1

    add-int/lit8 v2, v0, 0x0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->h:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->g:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :goto_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->j:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->e:F

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->m:Z

    if-nez v0, :cond_1

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->m:Z

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/e;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/b/g;->b:Lcom/google/maps/api/android/lib6/gmm6/b/g;

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_1
    :goto_1
    return v7

    :pswitch_0
    add-int/lit8 v1, v0, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->f:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->g:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->n:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iput-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->m:Z

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a_(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->k:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->l:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->o:I

    goto :goto_0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->p:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final y_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->k:Z

    return-void
.end method
