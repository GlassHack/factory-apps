.class Landroid/support/v4/view/bb;
.super Landroid/support/v4/view/ba;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/support/v4/view/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
