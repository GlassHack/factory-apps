.class final Landroid/support/v4/widget/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/d;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/d;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v4/widget/e;->a:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->b()V

    .line 466
    return-void
.end method
