.class public final Lcom/google/maps/api/android/lib6/gmm6/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ad;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

.field final b:Lcom/google/maps/api/android/lib6/c/ac;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/c/g;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/ac;Lcom/google/maps/api/android/lib6/gmm6/c/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;FFFFZZZFF)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;
    .locals 4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Z)V

    invoke-virtual {v1, p8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Z)V

    if-nez p9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(Z)V

    invoke-virtual {v1, p10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(F)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(II)V

    invoke-virtual {v1, p11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(F)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->q()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->p()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/c/ac;->s()F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/c/ac;->u()F

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/c/ac;->w()F

    move-result v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/c/ac;->y()F

    move-result v6

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/c/ac;->B()Z

    move-result v7

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/c/ac;->C()Z

    move-result v8

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/c/ac;->D()Z

    move-result v9

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/c/ac;->E()F

    move-result v10

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v11}, Lcom/google/maps/api/android/lib6/c/ac;->F()F

    move-result v11

    invoke-static/range {v0 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;FFFFZZZFF)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 14

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->d()Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->e()Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->p()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ac;->q()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/c/ac;->r()F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/c/ac;->t()F

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/c/ac;->v()F

    move-result v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/c/ac;->x()F

    move-result v6

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/c/ac;->B()Z

    move-result v7

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/c/ac;->C()Z

    move-result v8

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/c/ac;->D()Z

    move-result v9

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/c/ac;->E()F

    move-result v10

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v11}, Lcom/google/maps/api/android/lib6/c/ac;->F()F

    move-result v11

    invoke-static/range {v0 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;FFFFZZZFF)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->s()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->u()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->D()Z

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->E()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->C()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V

    :cond_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d()V

    :cond_6
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->F()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_7
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/c/ae;->b(Lcom/google/maps/api/android/lib6/c/ac;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a:Lcom/google/maps/api/android/lib6/c/y;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    invoke-direct {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ba;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/c/y;->a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_9
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_a
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->w()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->y()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->k()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_b
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_c
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->a(Z)V

    :cond_d
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ac;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    return-void
.end method

.method public final c()V
    .locals 10

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->j()Lcom/google/maps/api/android/lib6/a/a/f;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget v3, v1, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    iget v1, v1, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    int-to-double v6, v1

    mul-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/c/ac;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/c/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)Z

    move-result v0

    return v0
.end method
