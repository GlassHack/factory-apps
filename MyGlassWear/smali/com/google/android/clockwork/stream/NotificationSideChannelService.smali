.class public Lcom/google/android/clockwork/stream/NotificationSideChannelService;
.super Landroid/support/v4/app/NotificationCompatSideChannelService;
.source "NotificationSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/NotificationSideChannelService$1;,
        Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;
    }
.end annotation


# static fields
.field private static final LEGACY_ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.app.notification.BIND_SIDE_CHANNEL"

.field private static final TAG:Ljava/lang/String; = "NotifSideChannelService"


# instance fields
.field private mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/stream/NotificationSideChannelService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/NotificationSideChannelService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->checkPermission(ILjava/lang/String;)V

    return-void
.end method

.method private checkPermission(ILjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 109
    .local v3, "validPackage":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "validPackage":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationSideChannelService: Uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not authorized for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 55
    const-string v0, "NotifSideChannelService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "NotifSideChannelService"

    const-string v1, "cancel for %s %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationCancelDirect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "NotifSideChannelService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "NotifSideChannelService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel all for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationCancelAllDirect(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x3

    .line 47
    const-string v0, "NotifSideChannelService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "NotifSideChannelService"

    const-string v1, "notify for %s %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationPostedDirect(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 51
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.support.app.notification.BIND_SIDE_CHANNEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;-><init>(Lcom/google/android/clockwork/stream/NotificationSideChannelService;Lcom/google/android/clockwork/stream/NotificationSideChannelService$1;)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;->onCreate()V

    .line 30
    const-string v0, "NotifSideChannelService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "NotifSideChannelService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-static {}, Lcom/google/android/clockwork/stream/StreamManager;->getInstance()Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    .line 34
    return-void
.end method
