.class public Lcom/google/android/clockwork/stream/NotificationCollectorService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/NotificationCollectorService$1;,
        Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplCurrent;,
        Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplLegacy;,
        Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;,
        Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_WITH_MANAGER:Ljava/lang/String; = "com.google.android.clockwork.notification.CANCEL_WITH_MANAGER"

.field public static final ACTION_INITIAL_FETCH_DONE:Ljava/lang/String; = "com.google.android.clockwork.INITIAL_NOTIFICATIONS_FETCHED"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field private static final FETCH_INITIAL_DELAY:I = 0x3e8

.field private static final FETCH_INITIAL_RETRY_DELAY_MS:I = 0x3e8

.field private static final IMPL:Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;

.field private static final MSG_CANCEL_WITH_MANAGER:I = 0x4

.field private static final MSG_FETCH_INITIAL:I = 0x3

.field private static final MSG_NOTIFICATION_POSTED:I = 0x1

.field private static final MSG_NOTIFICATION_REMOVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NotifCollectorService"

.field private static final sNotificationCollectorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/NotificationCollectorListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDumpables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/wearable/util/Dumpable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInitialFetchLock:Ljava/lang/Object;

.field private mInitialFetchStarted:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mInitialFetchLock"
    .end annotation
.end field

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mLooper:Landroid/os/Looper;

.field private mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->sNotificationCollectorListeners:Ljava/util/List;

    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 325
    new-instance v0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplCurrent;

    invoke-direct {v0, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplCurrent;-><init>(Lcom/google/android/clockwork/stream/NotificationCollectorService$1;)V

    sput-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->IMPL:Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplLegacy;

    invoke-direct {v0, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplLegacy;-><init>(Lcom/google/android/clockwork/stream/NotificationCollectorService$1;)V

    sput-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->IMPL:Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mDumpables:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mInitialFetchLock:Ljava/lang/Object;

    .line 310
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/stream/NotificationCollectorService;)Lcom/google/android/clockwork/stream/StreamManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->sNotificationCollectorListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->handleCancelWithManager(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/clockwork/stream/NotificationCollectorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/clockwork/stream/NotificationCollectorService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->handleFetchInitial([Ljava/lang/String;)V

    return-void
.end method

.method public static addNotificationCollectorListener(Lcom/google/android/clockwork/stream/NotificationCollectorListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/android/clockwork/stream/NotificationCollectorListener;

    .prologue
    .line 248
    sget-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->sNotificationCollectorListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public static cancelWithManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "notificationId"    # I

    .prologue
    .line 188
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.clockwork.notification.CANCEL_WITH_MANAGER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    return-void
.end method

.method private ensureInitialFetchStarted(Z[Ljava/lang/String;)V
    .locals 4
    .param p1, "delay"    # Z
    .param p2, "notificationKeys"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mInitialFetchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mInitialFetchStarted:Z

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v2

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mInitialFetchStarted:Z

    .line 130
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 130
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 135
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private handleCancelWithManager(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 200
    const-string v4, "package_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "tag"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "id":I
    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "NotifCollectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationListenerService.cancelNotification threw an internal NullPointerException. packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleFetchInitial([Ljava/lang/String;)V
    .locals 10
    .param p1, "notificationKeys"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x3

    .line 218
    const-string v6, "NotifCollectorService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    const-string v6, "NotifCollectorService"

    const-string v7, "handleFetchInitial"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :try_start_0
    sget-object v6, Lcom/google/android/clockwork/stream/NotificationCollectorService;->IMPL:Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;

    invoke-interface {v6, p0, p1}, Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;->getActiveNotifications(Landroid/service/notification/NotificationListenerService;[Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 235
    .local v4, "notifications":[Landroid/service/notification/StatusBarNotification;
    const-string v6, "NotifCollectorService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    const-string v6, "NotifCollectorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFetchInitial: injecting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notifications"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 239
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v6, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v6, v5}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "notifications":[Landroid/service/notification/StatusBarNotification;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "NotifCollectorService"

    const-string v7, "SecurityException accessing existing notifications, scheduling retry"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void

    .line 241
    .restart local v0    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "notifications":[Landroid/service/notification/StatusBarNotification;
    :cond_2
    const-string v6, "NotifCollectorService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    const-string v6, "NotifCollectorService"

    const-string v7, "handleFetchInitial finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    iget-object v6, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.clockwork.INITIAL_NOTIFICATIONS_FETCHED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public static removeNotificationCollectorListener(Lcom/google/android/clockwork/stream/NotificationCollectorListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/android/clockwork/stream/NotificationCollectorListener;

    .prologue
    .line 252
    sget-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->sNotificationCollectorListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method


# virtual methods
.method public addDumpable(Lcom/google/android/wearable/util/Dumpable;)V
    .locals 3
    .param p1, "dumpable"    # Lcom/google/android/wearable/util/Dumpable;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mDumpables:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mDumpables:Ljava/util/Map;

    invoke-static {v0, p2, p3}, Lcom/google/android/wearable/util/DumpUtil;->dumpDumpables(Ljava/util/Map;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string v0, "NotifCollectorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "NotifCollectorService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->IMPL:Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;

    invoke-interface {v0}, Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;->getSupportsListenerConnectedApi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->ensureInitialFetchStarted(Z[Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 85
    const-string v1, "NotifCollectorService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "NotifCollectorService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-static {}, Lcom/google/android/clockwork/stream/StreamManager;->getInstance()Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    .line 90
    iget-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->addDumpable(Lcom/google/android/wearable/util/Dumpable;)V

    .line 91
    invoke-static {}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getInstance()Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->addDumpable(Lcom/google/android/wearable/util/Dumpable;)V

    .line 92
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationCollectorService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mLooper:Landroid/os/Looper;

    .line 97
    new-instance v1, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;-><init>(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Looper;Lcom/google/android/clockwork/stream/NotificationCollectorService$1;)V

    iput-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "NotifCollectorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "NotifCollectorService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 106
    return-void
.end method

.method public onListenerConnected()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "NotifCollectorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "NotifCollectorService"

    const-string v1, "onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->ensureInitialFetchStarted(Z[Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onListenerConnected([Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationKeys"    # [Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "NotifCollectorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "NotifCollectorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListenerConnected with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notification keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->ensureInitialFetchStarted(Z[Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.clockwork.notification.CANCEL_WITH_MANAGER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method
