.class public abstract Landroid/support/v7/widget/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/bx;

.field h:Landroid/support/v7/widget/bx;

.field i:I

.field j:Landroid/support/v7/widget/bo;

.field private k:I


# virtual methods
.method final a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6295
    iput v0, p0, Landroid/support/v7/widget/bx;->c:I

    .line 6296
    iput v0, p0, Landroid/support/v7/widget/bx;->f:I

    .line 6297
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 6394
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bx;->i:I

    .line 6395
    return-void
.end method

.method final a(II)V
    .locals 2

    .prologue
    .line 6390
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/bx;->i:I

    .line 6391
    return-void
.end method

.method final a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 6279
    iget v0, p0, Landroid/support/v7/widget/bx;->c:I

    if-ne v0, v1, :cond_0

    .line 6280
    iget v0, p0, Landroid/support/v7/widget/bx;->b:I

    iput v0, p0, Landroid/support/v7/widget/bx;->c:I

    .line 6282
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bx;->f:I

    if-ne v0, v1, :cond_1

    .line 6283
    iget v0, p0, Landroid/support/v7/widget/bx;->b:I

    iput v0, p0, Landroid/support/v7/widget/bx;->f:I

    .line 6285
    :cond_1
    if-eqz p2, :cond_2

    .line 6286
    iget v0, p0, Landroid/support/v7/widget/bx;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bx;->f:I

    .line 6288
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/bx;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bx;->b:I

    .line 6289
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6290
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bk;->c:Z

    .line 6292
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 6438
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bx;->k:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/bx;->k:I

    .line 6439
    iget v0, p0, Landroid/support/v7/widget/bx;->k:I

    if-gez v0, :cond_2

    .line 6440
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bx;->k:I

    .line 6445
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6455
    :cond_0
    :goto_1
    return-void

    .line 6438
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/bx;->k:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6447
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/bx;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6448
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/bx;->i:I

    goto :goto_1

    .line 6449
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bx;->k:I

    if-nez v0, :cond_0

    .line 6450
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/bx;->i:I

    goto :goto_1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 6306
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 6310
    iget v0, p0, Landroid/support/v7/widget/bx;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bx;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bx;->f:I

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 6346
    iget-object v0, p0, Landroid/support/v7/widget/bx;->j:Landroid/support/v7/widget/bo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    .prologue
    .line 6350
    iget-object v0, p0, Landroid/support/v7/widget/bx;->j:Landroid/support/v7/widget/bo;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/bo;->b(Landroid/support/v7/widget/bx;)V

    .line 6351
    return-void
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 6354
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 6358
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/bx;->i:I

    .line 6359
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 6370
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 6374
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 6378
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 6382
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 6386
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6398
    iput v3, p0, Landroid/support/v7/widget/bx;->i:I

    .line 6399
    iput v2, p0, Landroid/support/v7/widget/bx;->b:I

    .line 6400
    iput v2, p0, Landroid/support/v7/widget/bx;->c:I

    .line 6401
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/bx;->d:J

    .line 6402
    iput v2, p0, Landroid/support/v7/widget/bx;->f:I

    .line 6403
    iput v3, p0, Landroid/support/v7/widget/bx;->k:I

    .line 6404
    iput-object v4, p0, Landroid/support/v7/widget/bx;->g:Landroid/support/v7/widget/bx;

    .line 6405
    iput-object v4, p0, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    .line 6406
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 6463
    iget v0, p0, Landroid/support/v7/widget/bx;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6410
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/bx;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/widget/bx;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/bx;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/bx;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6413
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6414
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6415
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->k()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6416
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6417
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6418
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6419
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6420
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/bx;->n()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/bx;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6421
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6422
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
