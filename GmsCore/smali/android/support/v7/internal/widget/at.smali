.class public final Landroid/support/v7/internal/widget/at;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
