.class final Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/c/a;

.field final synthetic b:Landroid/support/v7/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->b()V

    .line 221
    return-void
.end method
