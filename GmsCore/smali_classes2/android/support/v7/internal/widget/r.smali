.class final Landroid/support/v7/internal/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/n;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/n;B)V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/support/v7/internal/widget/n;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/n;->t:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->c()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/n;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    invoke-static {v0}, Landroid/support/v7/internal/widget/n;->b(Landroid/support/v7/internal/widget/n;)V

    goto :goto_0
.end method
