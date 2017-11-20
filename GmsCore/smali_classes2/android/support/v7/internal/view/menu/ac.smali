.class public final Landroid/support/v7/internal/view/menu/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v0, Landroid/support/v7/internal/view/menu/ad;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ad;-><init>(Landroid/view/Menu;)V

    move-object p0, v0

    .line 37
    :cond_0
    return-object p0
.end method
