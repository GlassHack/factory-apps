.class public final Lcom/google/maps/api/android/lib6/gmm6/o/d/c;
.super Lcom/google/maps/api/android/lib6/gmm6/o/d/a;


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public volatile b:Ljava/lang/String;

.field public volatile c:I

.field public volatile d:I

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/u;

.field private final f:F

.field private g:[F

.field private h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/o/bh;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/a;-><init>()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d:I

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/gms/maps/x;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->f:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/u;-><init>(F)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    return-void
.end method

.method public static a(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d()V

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_3

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const/high16 v6, -0x1000000

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v0, v1, :cond_4

    const/4 v6, -0x1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/u;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->f:F

    move-object v1, p1

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->e:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/u;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->f:F

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FZ)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->g:[F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, v10, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, v10, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    :cond_3
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->g:[F

    aget v1, v1, v7

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d:I

    int-to-float v1, v1

    invoke-interface {v9, v0, v1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->g:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->g:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v9, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x1e01

    invoke-interface {v9, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v9, v0, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r()V

    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v0, v1, :cond_2

    const v6, -0x3f3f40

    goto/16 :goto_1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return-void
.end method
