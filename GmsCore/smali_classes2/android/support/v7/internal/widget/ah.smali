.class final Landroid/support/v7/internal/widget/ah;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/al;

.field final synthetic b:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/al;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/al;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/al;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->c()V

    .line 197
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
