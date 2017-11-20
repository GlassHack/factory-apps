.class public Lcom/google/android/clockwork/stream/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final KEY_WEARABLE_BACKGROUND:Ljava/lang/String; = "background"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInterruptive(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 16
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOngoing(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 23
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNotificationWearableBackground(Landroid/app/Notification;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "wearableBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "wearableBundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .restart local v1    # "wearableBundle":Landroid/os/Bundle;
    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    :cond_0
    const-string v2, "background"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    return-void
.end method
