.class public abstract Landroid/support/v7/widget/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field h:Landroid/support/v7/widget/bg;

.field i:J

.field j:J

.field k:J

.field l:J

.field m:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 7359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    .line 7362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bf;->a:Ljava/util/ArrayList;

    .line 7365
    iput-wide v2, p0, Landroid/support/v7/widget/bf;->i:J

    .line 7366
    iput-wide v2, p0, Landroid/support/v7/widget/bf;->j:J

    .line 7367
    iput-wide v4, p0, Landroid/support/v7/widget/bf;->k:J

    .line 7368
    iput-wide v4, p0, Landroid/support/v7/widget/bf;->l:J

    .line 7370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bf;->m:Z

    .line 7785
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/support/v7/widget/bx;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/bx;IIII)Z
.end method

.method public abstract a(Landroid/support/v7/widget/bx;Landroid/support/v7/widget/bx;IIII)Z
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/bx;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/bx;)V
.end method

.method public abstract d()V
.end method

.method public final d(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 7604
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    if-eqz v0, :cond_0

    .line 7606
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/bx;)V

    .line 7608
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 7771
    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7772
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 7773
    iget-object v2, p0, Landroid/support/v7/widget/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7775
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7776
    return-void
.end method

.method public final e(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 7616
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    if-eqz v0, :cond_0

    .line 7618
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bg;->c(Landroid/support/v7/widget/bx;)V

    .line 7620
    :cond_0
    return-void
.end method

.method public final f(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 7628
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    if-eqz v0, :cond_0

    .line 7630
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bx;)V

    .line 7632
    :cond_0
    return-void
.end method

.method public final g(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 7645
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    if-eqz v0, :cond_0

    .line 7647
    iget-object v0, p0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bg;->d(Landroid/support/v7/widget/bx;)V

    .line 7649
    :cond_0
    return-void
.end method
