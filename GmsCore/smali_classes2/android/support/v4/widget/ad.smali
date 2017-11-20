.class final Landroid/support/v4/widget/ad;
.super Landroid/support/v4/widget/ac;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v4/widget/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 241
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
