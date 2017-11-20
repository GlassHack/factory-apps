.class final Landroid/support/v7/internal/view/menu/x;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/w;

.field private b:Landroid/support/v7/internal/view/menu/j;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/w;Landroid/support/v7/internal/view/menu/j;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    .line 333
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    .line 334
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/x;->a()V

    .line 335
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/x;)Landroid/support/v7/internal/view/menu/j;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->c(Landroid/support/v7/internal/view/menu/w;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->t()Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_1

    .line 377
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->c(Landroid/support/v7/internal/view/menu/w;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->n()Ljava/util/ArrayList;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 379
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 380
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    .line 381
    if-ne v0, v2, :cond_0

    .line 382
    iput v1, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    .line 388
    :goto_1
    return-void

    .line 379
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/internal/view/menu/n;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->a(Landroid/support/v7/internal/view/menu/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    if-lt p1, v1, :cond_0

    .line 350
    add-int/lit8 p1, p1, 0x1

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    return-object v0

    .line 347
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->a(Landroid/support/v7/internal/view/menu/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/x;->c:I

    if-gez v1, :cond_1

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 343
    :goto_1
    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->b:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/x;->a(I)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 358
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 362
    if-nez p2, :cond_1

    .line 363
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->b(Landroid/support/v7/internal/view/menu/w;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/internal/view/menu/w;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 366
    check-cast v0, Landroid/support/v7/internal/view/menu/ab;

    .line 367
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/w;

    iget-boolean v2, v2, Landroid/support/v7/internal/view/menu/w;->d:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 368
    check-cast v2, Landroid/support/v7/internal/view/menu/ListMenuItemView;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c()V

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/x;->a(I)Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/n;)V

    .line 371
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/x;->a()V

    .line 393
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 394
    return-void
.end method
