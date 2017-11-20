.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/h;


# instance fields
.field a:F

.field b:F

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->h:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->n:Z

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/p;Lcom/google/maps/api/android/lib6/gmm6/o/u;Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;
    .locals 9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b()I

    move-result v0

    if-ge v6, v0, :cond_b

    invoke-virtual {p0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    move-result-object v1

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v5, p5, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    if-eqz v0, :cond_5

    iget-object v5, p5, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    :cond_1
    :goto_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v1

    invoke-static {v4, p5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/e/c;F)I

    move-result v3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/u;Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/v;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v7

    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f()I

    move-result v2

    if-lez v2, :cond_4

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    if-eqz v0, :cond_1

    iget-object v5, p5, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/d/b;)Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->c:F

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v3

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/n/j;->a:I

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    const-string v3, "/road_shields/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p5, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->m:F

    mul-float/2addr v0, v1

    :goto_4
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v1

    mul-float/2addr v0, v1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;

    invoke-direct {v1, v2, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;-><init>(Landroid/graphics/Bitmap;FLcom/google/maps/api/android/lib6/gmm6/o/c/p;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_3

    :cond_7
    iget v1, p5, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->n:F

    mul-float/2addr v0, v1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_9
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/r;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/r;-><init>(F)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto/16 :goto_3

    :cond_b
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c()Lcom/google/maps/api/android/lib6/gmm6/l/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c()Lcom/google/maps/api/android/lib6/gmm6/l/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b()I

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    move-result-object v2

    invoke-direct {v0, v8, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;-><init>(Ljava/util/ArrayList;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;)V

    goto :goto_5

    :cond_c
    move-object v1, v7

    goto/16 :goto_3
.end method

.method private b()V
    .locals 10

    const/4 v2, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    move v1, v2

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v6, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a()F

    move-result v8

    add-float/2addr v6, v8

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    add-float/2addr v3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/p;->a:[I

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b:F

    return-void

    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->c()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_4

    :cond_4
    cmpl-float v0, v4, v1

    if-lez v0, :cond_2

    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v4

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->c()F

    move-result v0

    add-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_5

    :cond_5
    cmpl-float v0, v4, v2

    if-lez v0, :cond_6

    sub-float v0, v4, v2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->d()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    goto :goto_6

    :pswitch_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    move v5, v4

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v7

    div-float/2addr v7, v9

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->c()F

    move-result v0

    add-float/2addr v0, v7

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v0

    goto :goto_7

    :cond_7
    cmpl-float v0, v2, v5

    if-lez v0, :cond_8

    sub-float v0, v2, v5

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v5

    div-float/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_8

    :cond_9
    cmpl-float v0, v4, v1

    if-lez v0, :cond_2

    sub-float v0, v4, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->l:F

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->k:F

    sub-float v2, v1, v2

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    move v3, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v7, v6

    move v6, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a()F

    move-result v2

    add-float/2addr v2, v6

    move v6, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    if-ne v8, v9, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    instance-of v1, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/r;

    if-eqz v1, :cond_7

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a()F

    move-result v1

    add-float v2, v6, v1

    move v6, v2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    if-ne v8, v9, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    sub-float/2addr v2, v6

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a()F

    move-result v10

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->b()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    if-ne v1, v8, :cond_8

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v1

    sub-float v1, v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    sub-float v1, v4, v1

    :goto_4
    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->c()F

    move-result v8

    add-float v12, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

    const/4 v14, 0x0

    sub-float v15, v12, v11

    invoke-interface {v13, v6, v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

    add-float v14, v6, v10

    const/4 v15, 0x0

    sub-float v11, v12, v11

    invoke-interface {v13, v14, v15, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

    add-float/2addr v10, v6

    const/4 v13, 0x0

    invoke-interface {v11, v10, v13, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(FFF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

    invoke-interface {v10, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

    const/4 v10, 0x0

    invoke-interface {v1, v5, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-interface {v1, v5, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a()F

    move-result v1

    add-float v2, v6, v1

    move v6, v2

    move v5, v8

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/v;

    if-ne v1, v8, :cond_b

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->e()F

    move-result v1

    sub-float v1, v7, v1

    sub-float v1, v4, v1

    goto :goto_4

    :cond_9
    sub-float v2, v4, v7

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->n:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/k;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a()V

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->a(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_b
    move v1, v4

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->n:Z

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/s;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->m:Z

    if-nez v0, :cond_c

    iget-object v3, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this.textureArray should be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    instance-of v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/r;

    if-nez v6, :cond_2

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_2
    if-nez v0, :cond_b

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    if-nez v0, :cond_c

    :cond_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this.textureArray should be empty on initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;

    instance-of v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/r;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->m:Z

    move v0, v2

    goto :goto_3

    :cond_c
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->n:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_d
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->a:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :goto_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x6

    mul-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public final a()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method
