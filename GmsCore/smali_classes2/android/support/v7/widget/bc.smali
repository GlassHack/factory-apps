.class final Landroid/support/v7/widget/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/support/v7/widget/n;)V
    .locals 3

    .prologue
    .line 369
    iget v0, p1, Landroid/support/v7/widget/n;->a:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p1, Landroid/support/v7/widget/n;->b:I

    iget v2, p1, Landroid/support/v7/widget/n;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bj;->a(II)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p1, Landroid/support/v7/widget/n;->b:I

    iget v2, p1, Landroid/support/v7/widget/n;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bj;->b(II)V

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p1, Landroid/support/v7/widget/n;->b:I

    iget v2, p1, Landroid/support/v7/widget/n;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bj;->c(II)V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p1, Landroid/support/v7/widget/n;->b:I

    iget v2, p1, Landroid/support/v7/widget/n;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bj;->d(II)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/widget/bx;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)Landroid/support/v7/widget/bx;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget v1, v0, Landroid/support/v7/widget/bu;->g:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/bu;->g:I

    .line 349
    return-void
.end method

.method public final a(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bc;->c(Landroid/support/v7/widget/n;)V

    .line 366
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 355
    return-void
.end method

.method public final b(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bc;->c(Landroid/support/v7/widget/n;)V

    .line 388
    return-void
.end method

.method public final c(II)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 360
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 361
    return-void
.end method

.method public final d(II)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 394
    return-void
.end method

.method public final e(II)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 400
    iget-object v0, p0, Landroid/support/v7/widget/bc;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 401
    return-void
.end method
