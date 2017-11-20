.class public Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;
.super Landroid/app/Service;
.source "NotificationBridgerService.java"


# static fields
.field public static final NOTIFICATION_ACTION:Ljava/lang/String; = "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_ACTION"

.field public static final NOTIFICATION_CONTENT_INTENT:Ljava/lang/String; = "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_CONTENT_INTENT"


# instance fields
.field private mBridger:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    invoke-static {}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getInstance()Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;->mBridger:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    .line 23
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;->mBridger:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleNotificationAction(Landroid/content/Intent;)V

    .line 37
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_CONTENT_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;->mBridger:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleNotificationContentIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
