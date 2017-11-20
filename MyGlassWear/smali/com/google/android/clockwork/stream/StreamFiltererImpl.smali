.class public Lcom/google/android/clockwork/stream/StreamFiltererImpl;
.super Ljava/lang/Object;
.source "StreamFiltererImpl.java"

# interfaces
.implements Lcom/google/android/clockwork/stream/StreamFilterer;
.implements Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamFilterer"


# instance fields
.field private mListener:Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;

.field private final mLock:Ljava/lang/Object;

.field private mMutedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutedAppsList:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V
    .locals 1
    .param p1, "mutedAppsList"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mLock:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedAppsList:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    .line 27
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedAppsList:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->registerListener(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;)V

    .line 28
    return-void
.end method

.method private isEmptyNotification(Landroid/app/Notification;)Z
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "extras":Landroid/os/Bundle;
    iget v1, p1, Landroid/app/Notification;->icon:I

    if-nez v1, :cond_0

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHomeForegroundService(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "com.google.android.wearable.app"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMutedApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "originalPackageName"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedAppsList:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-virtual {v0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getMutedApps()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    .line 83
    const-string v0, "StreamFilterer"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "StreamFilterer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muted apps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getFilteredStatus(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "originalPackageName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p3}, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->isEmptyNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-direct {p0, p4}, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->isMutedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x2

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->isHomeForegroundService(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x4

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1, p3}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isLegacyGmailUndoNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    const/4 v0, 0x5

    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMutedAppsListInvalidated()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedAppsList:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-virtual {v0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getMutedApps()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    .line 95
    const-string v0, "StreamFilterer"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "StreamFilterer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muted apps set updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mMutedApps:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mListener:Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mListener:Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;

    invoke-interface {v0}, Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;->onStreamFiltererChanged()V

    .line 102
    :cond_1
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setChangedListener(Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Changed listener already registered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamFiltererImpl;->mListener:Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;

    .line 53
    return-void
.end method
