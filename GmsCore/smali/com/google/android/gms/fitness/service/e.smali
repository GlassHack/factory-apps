.class public final Lcom/google/android/gms/fitness/service/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->at:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/support/v4/app/bb;

    invoke-direct {v0, p0}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bb;->a(IZ)V

    iput-boolean v2, v0, Landroid/support/v4/app/bb;->k:Z

    iput-boolean v2, v0, Landroid/support/v4/app/bb;->u:Z

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->a()Landroid/support/v4/app/bb;

    move-result-object v1

    const-string v0, "DebugNotifications"

    iput-object v0, v1, Landroid/support/v4/app/bb;->q:Ljava/lang/String;

    iput-boolean v2, v1, Landroid/support/v4/app/bb;->r:Z

    .line 75
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 81
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->at:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/support/v4/app/bb;

    invoke-direct {v0, p0}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    const-string v0, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v0

    iput-boolean v8, v0, Landroid/support/v4/app/bb;->u:Z

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->a()Landroid/support/v4/app/bb;

    move-result-object v1

    const-string v0, "DebugNotifications"

    iput-object v0, v1, Landroid/support/v4/app/bb;->q:Ljava/lang/String;

    iput-boolean v8, v1, Landroid/support/v4/app/bb;->r:Z

    .line 94
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
