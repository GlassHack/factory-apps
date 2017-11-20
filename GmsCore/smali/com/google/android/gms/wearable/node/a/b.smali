.class public final Lcom/google/android/gms/wearable/node/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/NotificationManager;

.field private c:Landroid/support/v4/app/bb;

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->b:Landroid/app/NotificationManager;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.wearable.STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/bb;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v3, 0x7f100447

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    iput-object v0, v1, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    const v0, 0x7f0200fb

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/bb;->a(IZ)V

    const/4 v1, -0x2

    iput v1, v0, Landroid/support/v4/app/bb;->j:I

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->c:Landroid/support/v4/app/bb;

    .line 47
    iput v4, p0, Lcom/google/android/gms/wearable/node/a/b;->d:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 51
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableConn"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    if-eqz p3, :cond_3

    .line 53
    const-string v0, "WearableConn"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_1
    :goto_0
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v1, 0x7f10044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 73
    :cond_2
    :goto_1
    iput p1, p0, Lcom/google/android/gms/wearable/node/a/b;->d:I

    .line 74
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/a/b;->e:Ljava/lang/CharSequence;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/a/b;->f:J

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->c:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x580f

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/b;->c:Landroid/support/v4/app/bb;

    invoke-virtual {v2}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    return-void

    .line 55
    :cond_3
    const-string v0, "WearableConn"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v1, 0x7f100449

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 65
    :cond_5
    if-ne p1, v2, :cond_6

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v1, 0x7f100448

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 67
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v1, 0x7f10044c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 70
    :cond_7
    const-string p2, ""

    goto :goto_1
.end method

.method public final a(Landroid/app/Service;)V
    .locals 4

    .prologue
    .line 87
    const/16 v0, 0x580f

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/b;->c:Landroid/support/v4/app/bb;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/b;->a:Landroid/content/Context;

    const v3, 0x7f10044b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 90
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/wearable/node/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/b;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/a/b;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 116
    return-void
.end method

.method public final b(Landroid/app/Service;)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/b;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x580f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    return-void
.end method
