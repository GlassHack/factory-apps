.class final Landroid/support/v7/internal/view/i;
.super Landroid/support/v4/view/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/h;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/h;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-object p1, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    invoke-direct {p0}, Landroid/support/v4/view/cp;-><init>()V

    .line 103
    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->b:Z

    .line 104
    iput v0, p0, Landroid/support/v7/internal/view/i;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    iget-object v0, v0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/view/i;->b:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->b:Z

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    iget-object v0, v0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->a(Landroid/view/View;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    iget-object v0, v0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/view/i;->c:I

    iget-object v1, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    iget-object v1, v1, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->a:Landroid/support/v7/internal/view/h;

    iget-object v0, v0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method
