.class public final Landroid/support/v7/widget/r;
.super Landroid/support/v7/widget/bf;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Ljava/util/ArrayList;

.field f:Ljava/util/ArrayList;

.field g:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/bf;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    .line 618
    return-void
.end method

.method private a(Landroid/support/v7/widget/aa;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/aa;Landroid/support/v7/widget/bx;)Z

    .line 397
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/aa;Landroid/support/v7/widget/bx;)Z

    .line 400
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 613
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 614
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->b()V

    .line 613
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/bx;)V
    .locals 3

    .prologue
    .line 383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 384
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aa;

    .line 385
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/aa;Landroid/support/v7/widget/bx;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, v0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    if-nez v2, :cond_0

    .line 387
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 391
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/aa;Landroid/support/v7/widget/bx;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 402
    iget-object v0, p1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    if-ne v0, p2, :cond_0

    .line 404
    iput-object v1, p1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    .line 411
    :goto_0
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 412
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 413
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 414
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/r;->g(Landroid/support/v7/widget/bx;)V

    .line 415
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 405
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    if-ne v0, p2, :cond_1

    .line 406
    iput-object v1, p1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 98
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    .line 99
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v0

    .line 100
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v0

    .line 101
    :goto_3
    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    .line 183
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0

    :cond_2
    move v3, v2

    .line 98
    goto :goto_1

    :cond_3
    move v4, v2

    .line 99
    goto :goto_2

    :cond_4
    move v5, v2

    .line 100
    goto :goto_3

    .line 106
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 107
    iget-object v9, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v9}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v9

    iget-wide v10, p0, Landroid/support/v7/widget/bf;->j:J

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v10

    new-instance v11, Landroid/support/v7/widget/v;

    invoke-direct {v11, p0, v0, v9}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/bx;Landroid/support/v4/view/cb;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/cb;->c()V

    iget-object v9, p0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 109
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    if-eqz v3, :cond_7

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v8, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v8, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v8, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v8, Landroid/support/v7/widget/s;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/s;-><init>(Landroid/support/v7/widget/r;Ljava/util/ArrayList;)V

    .line 127
    if-eqz v1, :cond_a

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 129
    iget-wide v10, p0, Landroid/support/v7/widget/bf;->j:J

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v8, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v8, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v8, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v8, Landroid/support/v7/widget/t;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/t;-><init>(Landroid/support/v7/widget/r;Ljava/util/ArrayList;)V

    .line 150
    if-eqz v1, :cond_b

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    .line 152
    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    iget-wide v10, p0, Landroid/support/v7/widget/bf;->j:J

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 158
    :cond_8
    :goto_7
    if-eqz v5, :cond_0

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v12, Landroid/support/v7/widget/u;

    invoke-direct {v12, p0, v5}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/r;Ljava/util/ArrayList;)V

    .line 172
    if-nez v1, :cond_9

    if-eqz v3, :cond_f

    .line 173
    :cond_9
    if-eqz v1, :cond_c

    iget-wide v0, p0, Landroid/support/v7/widget/bf;->j:J

    move-wide v10, v0

    .line 174
    :goto_8
    if-eqz v3, :cond_d

    iget-wide v0, p0, Landroid/support/v7/widget/bf;->k:J

    move-wide v8, v0

    .line 175
    :goto_9
    if-eqz v4, :cond_e

    iget-wide v0, p0, Landroid/support/v7/widget/bf;->l:J

    .line 176
    :goto_a
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v6, v10, v0

    .line 177
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 178
    invoke-static {v0, v12, v6, v7}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 131
    :cond_a
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 154
    :cond_b
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_c
    move-wide v10, v6

    .line 173
    goto :goto_8

    :cond_d
    move-wide v8, v6

    .line 174
    goto :goto_9

    :cond_e
    move-wide v0, v6

    .line 175
    goto :goto_a

    .line 180
    :cond_f
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method

.method public final a(Landroid/support/v7/widget/bx;)Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/bx;)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/support/v7/widget/bx;IIII)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 249
    iget-object v0, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 250
    int-to-float v1, p2

    iget-object v2, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ax;->j(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 251
    int-to-float v1, p3

    iget-object v3, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ax;->k(Landroid/view/View;)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v3, v1

    .line 252
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/bx;)V

    .line 253
    sub-int v1, p4, v2

    .line 254
    sub-int v4, p5, v3

    .line 255
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 266
    :goto_0
    return v6

    .line 259
    :cond_0
    if-eqz v1, :cond_1

    .line 260
    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 262
    :cond_1
    if-eqz v4, :cond_2

    .line 263
    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 265
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/ab;

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ab;-><init>(Landroid/support/v7/widget/bx;IIIIB)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/bx;Landroid/support/v7/widget/bx;IIII)Z
    .locals 9

    .prologue
    .line 311
    iget-object v0, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->j(Landroid/view/View;)F

    move-result v0

    .line 312
    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ax;->k(Landroid/view/View;)F

    move-result v1

    .line 313
    iget-object v2, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ax;->e(Landroid/view/View;)F

    move-result v2

    .line 314
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/bx;)V

    .line 315
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 316
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 318
    iget-object v5, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v5, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 319
    iget-object v0, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 320
    iget-object v0, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 321
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/bx;)V

    .line 324
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 325
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 326
    iget-object v0, p2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 328
    :cond_0
    iget-object v8, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/aa;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/aa;-><init>(Landroid/support/v7/widget/bx;Landroid/support/v7/widget/bx;IIIIB)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/bx;)Z
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/bx;)V

    .line 216
    iget-object v0, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->e()V

    .line 524
    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/widget/bx;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 420
    iget-object v4, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 422
    invoke-static {v4}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->b()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 426
    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    if-ne v0, p1, :cond_0

    .line 427
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 428
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 429
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/r;->a(Ljava/util/List;Landroid/support/v7/widget/bx;)V

    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-static {v4, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 436
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->d(Landroid/support/v7/widget/bx;)V

    .line 438
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-static {v4, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 440
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->f(Landroid/support/v7/widget/bx;)V

    .line 443
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 444
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 445
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/r;->a(Ljava/util/List;Landroid/support/v7/widget/bx;)V

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 447
    iget-object v2, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 450
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_8

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_6

    .line 453
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ab;

    .line 454
    iget-object v1, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    if-ne v1, p1, :cond_7

    .line 455
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 456
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 457
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 458
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 452
    :cond_7
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 466
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_a

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 469
    invoke-static {v4, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 470
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->f(Landroid/support/v7/widget/bx;)V

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 472
    iget-object v2, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 478
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->c()V

    .line 498
    return-void
.end method

.method public final d()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 529
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 531
    iget-object v2, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    iget-object v2, v2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 532
    invoke-static {v2, v5}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 533
    invoke-static {v2, v5}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 534
    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 540
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/r;->d(Landroid/support/v7/widget/bx;)V

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/r;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 543
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 546
    iget-object v2, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 547
    invoke-static {v2, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 548
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/r;->f(Landroid/support/v7/widget/bx;)V

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 551
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aa;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/aa;)V

    .line 552
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 555
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/r;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 556
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 610
    :goto_4
    return-void

    .line 560
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_7

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 564
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_6
    if-ltz v2, :cond_6

    .line 565
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ab;

    .line 566
    iget-object v4, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    .line 567
    iget-object v4, v4, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 568
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 569
    invoke-static {v4, v5}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 570
    iget-object v1, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 571
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 573
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    :cond_5
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_6

    .line 561
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 577
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_a

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_8
    if-ltz v2, :cond_9

    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bx;

    .line 583
    iget-object v4, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 584
    invoke-static {v4, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 585
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/r;->f(Landroid/support/v7/widget/bx;)V

    .line 586
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 588
    iget-object v1, p0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_8
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_8

    .line 578
    :cond_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    .line 592
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_d

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 595
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 596
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_a
    if-ltz v2, :cond_c

    .line 597
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aa;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/aa;)V

    .line 598
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 599
    iget-object v1, p0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 596
    :cond_b
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_a

    .line 593
    :cond_c
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_9

    .line 604
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/r;->a(Ljava/util/List;)V

    .line 605
    iget-object v0, p0, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/r;->a(Ljava/util/List;)V

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/r;->a(Ljava/util/List;)V

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/r;->a(Ljava/util/List;)V

    .line 609
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->e()V

    goto/16 :goto_4
.end method
