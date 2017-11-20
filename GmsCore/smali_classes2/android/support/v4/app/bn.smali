.class final Landroid/support/v4/app/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/bs;)V
    .locals 5

    .prologue
    .line 100
    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/bs;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/bs;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/bs;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/app/bs;->e()[Landroid/support/v4/app/cg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/support/v4/app/bs;->e()[Landroid/support/v4/app/cg;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ce;->a([Landroid/support/v4/app/cg;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 105
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/bs;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/support/v4/app/bs;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 111
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 112
    return-void
.end method
