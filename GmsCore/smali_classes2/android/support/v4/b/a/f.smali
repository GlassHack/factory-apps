.class final Landroid/support/v4/b/a/f;
.super Landroid/support/v4/b/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 96
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 101
    return-void
.end method
