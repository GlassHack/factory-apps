.class public final Landroid/support/v4/view/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/v4/view/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/q;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;B)V

    .line 502
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 516
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0, p1, p2, v2}, Landroid/support/v4/view/u;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/r;

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    new-instance v0, Landroid/support/v4/view/s;

    invoke-direct {v0, p1, p2, v2}, Landroid/support/v4/view/s;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/r;

    goto :goto_0
.end method
