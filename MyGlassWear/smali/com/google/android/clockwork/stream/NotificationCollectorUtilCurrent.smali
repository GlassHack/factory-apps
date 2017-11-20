.class public Lcom/google/android/clockwork/stream/NotificationCollectorUtilCurrent;
.super Ljava/lang/Object;
.source "NotificationCollectorUtilCurrent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifCollectorService"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNotifications(Landroid/service/notification/NotificationListenerService;[Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 10
    .param p0, "service"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "keys"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 36
    :goto_0
    return-object v6

    .line 23
    :cond_0
    const-string v6, "NotifCollectorService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 24
    const-string v6, "NotifCollectorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActiveNotifications: Fetching "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notifications one at a time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v5, "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 30
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v9

    invoke-virtual {p0, v6}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 32
    .local v1, "fetchedNotifications":[Landroid/service/notification/StatusBarNotification;
    array-length v6, v1

    if-lez v6, :cond_2

    aget-object v6, v1, v9

    if-eqz v6, :cond_2

    .line 33
    aget-object v6, v1, v9

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v1    # "fetchedNotifications":[Landroid/service/notification/StatusBarNotification;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method
