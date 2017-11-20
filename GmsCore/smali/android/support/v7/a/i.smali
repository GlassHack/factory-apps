.class final Landroid/support/v7/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/a/g;


# direct methods
.method constructor <init>(Landroid/support/v7/a/g;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Landroid/support/v7/a/i;->a:Landroid/support/v7/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 512
    iget-object v0, p0, Landroid/support/v7/a/i;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/a/i;->a:Landroid/support/v7/a/g;

    iget-object v1, v1, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 515
    return-void
.end method
