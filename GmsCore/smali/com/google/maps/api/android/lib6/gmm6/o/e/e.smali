.class public final Lcom/google/maps/api/android/lib6/gmm6/o/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;


# instance fields
.field private final A:Ljava/util/List;

.field private B:Ljava/util/Iterator;

.field private final C:Ljava/util/Comparator;

.field private D:Lcom/google/c/d/a;

.field private E:I

.field private final F:Ljava/util/Map;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

.field private volatile c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

.field private e:Lcom/google/maps/api/android/lib6/gmm6/l/cj;

.field private f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

.field private h:F

.field private i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

.field private k:Ljava/util/Iterator;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:Ljava/util/ArrayList;

.field private o:I

.field private final p:Ljava/util/Map;

.field private q:I

.field private r:F

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private volatile w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Landroid/content/res/Resources;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/f;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/f;-><init>(B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->C:Ljava/util/Comparator;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->E:I

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->F:Ljava/util/Map;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/u;-><init>(F)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    return-void
.end method

.method static a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->g()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->k:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->l:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :pswitch_3
    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    move v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;)I
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f()I

    move-result v0

    :goto_1
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f()I

    move-result v3

    :goto_3
    iget-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    :cond_1
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x8

    :cond_2
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    int-to-float v2, v2

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_3
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/l;)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e:Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    invoke-virtual {v0, p1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-ne v6, v1, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v2

    move v4, v1

    move-object v3, v0

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v1

    cmpl-float v0, v1, v2

    if-lez v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    if-eqz v2, :cond_6

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->g()I

    move-result v4

    if-ge v3, v4, :cond_0

    const v4, 0x3f333333    # 0.7f

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/s;ILcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;ZLcom/google/maps/api/android/lib6/gmm6/o/e/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/p;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->c:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v5

    const/high16 v6, 0x41680000    # 14.5f

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->b:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->u:Z

    if-nez v6, :cond_2

    add-float/2addr v4, v5

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v5

    mul-float v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-boolean v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->o:Z

    if-eqz v4, :cond_5

    const/16 v8, 0xa

    :goto_2
    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    aget-object v6, v4, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v11, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->l:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-object v12, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-boolean v15, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->q:Z

    move-object v4, v2

    move-object/from16 v5, p2

    move-object/from16 v7, v16

    move/from16 v9, p3

    invoke-static/range {v4 .. v15}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/l;IZFFLcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/u;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;

    move-result-object v4

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->r()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    if-eqz v2, :cond_8

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    array-length v3, v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->i:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->j:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->k:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v8

    invoke-static {v3, v4, v6, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;FIIF)F

    move-result v8

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-object v10, v3, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->h:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget v9, v3, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->l:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-boolean v13, v3, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->q:Z

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/l;IZFFLcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/u;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->r()V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;->j:[Lcom/google/maps/api/android/lib6/gmm6/l/a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_d

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;->h:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->h:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;->i:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;->i:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->h:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/i;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_9
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->r()V

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->D:Lcom/google/c/d/a;

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/i;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;ZLcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/p;Lcom/google/maps/api/android/lib6/gmm6/o/u;Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    move-result-object v2

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private a(J)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "#:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->E:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->E:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " numL:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Labeler.runLabeler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->k:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;ZZ)V

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->b()Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a()I

    move-result v1

    if-gt v0, v1, :cond_c

    :cond_3
    if-lez v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->b()Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a()I

    move-result v5

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    move-result-object v1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->C:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    :cond_6
    move v0, v4

    :goto_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v4, v0, 0x1

    if-lez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_7

    move v0, v3

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    if-lt v1, v5, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a()I

    move-result v5

    if-ge v1, v5, :cond_a

    :cond_8
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;ZZ)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(I)V

    :cond_9
    move v0, v4

    goto :goto_4

    :cond_a
    move v0, v4

    :cond_b
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/i;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/i;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->t:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->s()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {p1, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_5
    :goto_2
    return v2

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)V

    move v2, v3

    goto :goto_2
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Lcom/google/maps/api/android/lib6/gmm6/l/cl;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->F:Ljava/util/Map;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->p()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    if-ne p1, v0, :cond_2

    const v1, 0x7fffffff

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v6

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v3

    :goto_1
    if-ge v5, v9, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->b()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->b()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v10

    if-eqz v4, :cond_2

    if-eqz v10, :cond_2

    instance-of v11, v4, Lcom/google/maps/api/android/lib6/a/a/b;

    if-eqz v11, :cond_2

    instance-of v11, v10, Lcom/google/maps/api/android/lib6/a/a/b;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    :goto_2
    if-eqz v4, :cond_5

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_3

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(I)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    cmpg-float v4, v4, v10

    if-gez v4, :cond_5

    :cond_4
    :goto_4
    return v2

    :cond_5
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    if-eqz v4, :cond_7

    move v4, v2

    :goto_5
    if-gt v1, v4, :cond_6

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v0

    if-le v6, v0, :cond_4

    :cond_6
    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(I)V

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->o()I

    move-result v0

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->k()F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->r:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->n()Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;->b:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->n()Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->w:Z

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->x:Z

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->m:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->s:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->x:Z

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->v:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/ce;ILcom/google/maps/api/android/lib6/gmm6/o/g;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    add-long v6, v2, v4

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->k:Ljava/util/Iterator;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/g;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->t:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->z:Ljava/util/Set;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->b()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e:Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->F:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->size()I

    move-result v3

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    invoke-direct {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>(I)V

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    add-int/lit8 v9, v3, -0x1

    invoke-direct {v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>(I)V

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    invoke-virtual {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v2

    div-float v2, v3, v2

    const v3, 0x48435000    # 200000.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    const v3, 0x48435000    # 200000.0f

    sub-float/2addr v2, v3

    const v3, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42300000    # 44.0f

    add-float/2addr v2, v3

    :goto_2
    float-to-int v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->q:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(I)V

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->r:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->B:Ljava/util/Iterator;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v2

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->h:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->t:I

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->c()Lcom/google/maps/api/android/lib6/gmm6/o/au;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->b()I

    move-result v3

    if-ge v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->u:Z

    const/4 v2, 0x0

    move v4, v2

    :goto_4
    if-ge v4, v5, :cond_11

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->b()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->h:F

    iget v9, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_6
    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_7
    const v3, 0x3966afcd    # 2.2E-4f

    mul-float/2addr v2, v3

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->n()Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v2

    instance-of v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/i;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    iget v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->e:F

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->h:F

    iget v9, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->e:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3, v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->r:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v2

    :goto_7
    if-eqz v2, :cond_10

    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)V

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)Z

    move-result v2

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_12

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->n()Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v9

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v2, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;ZZ)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_12
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->x:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    invoke-direct {p0, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->v:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->w:Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->w:Z

    return-void
.end method

.method public final c()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x14

    add-long/2addr v4, v0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->i:Lcom/google/maps/api/android/lib6/gmm6/l/ce;

    invoke-virtual {v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->o:I

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->x:Z

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->y:Z

    :cond_5
    invoke-direct {p0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->v:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->v:Z

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/e/g;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
