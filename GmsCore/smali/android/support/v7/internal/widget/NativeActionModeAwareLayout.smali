.class public Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
.super Landroid/support/v7/internal/widget/ContentFrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Landroid/support/v7/internal/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/widget/y;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/y;

    .line 40
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/y;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a:Landroid/support/v7/internal/widget/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/widget/y;->a(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/ContentFrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
