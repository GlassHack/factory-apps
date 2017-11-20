.class final Landroid/support/v7/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/z;


# instance fields
.field final synthetic a:Landroid/support/v7/a/g;


# direct methods
.method private constructor <init>(Landroid/support/v7/a/g;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Landroid/support/v7/a/l;->a:Landroid/support/v7/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/g;B)V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0, p1}, Landroid/support/v7/a/l;-><init>(Landroid/support/v7/a/g;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Landroid/support/v7/a/l;->a:Landroid/support/v7/a/g;

    iget-object v1, v0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/bi;->a(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->g()Z

    .line 965
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v1, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v1}, Landroid/support/v7/a/d;->closeOptionsMenu()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/a/g;->o:Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;)Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method
