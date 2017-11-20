.class public Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;
.super Ljava/lang/Object;
.source "BridgedNotificationFilter.java"


# static fields
.field private static final BLACKLIST_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_IS_TIME_TO_LEAVE:Ljava/lang/String; = "time_to_leave"

.field private static final TAG:Ljava/lang/String; = "BridgedNotiFilter"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 26
    const-string v0, "android"

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.calendar"

    const-string v4, "com.android.calendar"

    const-string v5, "com.google.android.deskclock"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;->BLACKLIST_PACKAGE_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private isWhitelistedNowNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 57
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 62
    .local v2, "nowNotif":Landroid/app/Notification;
    invoke-static {v2}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "time_to_leave"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 64
    .local v1, "isTimeToLeave":Z
    const-string v3, "BridgedNotiFilter"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    if-eqz v1, :cond_2

    .line 66
    const-string v3, "BridgedNotiFilter"

    const-string v4, "This IS a time-to-leave notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    const-string v3, "BridgedNotiFilter"

    const-string v4, "This is NOT a time-to-leave notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public shouldFilter(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;->BLACKLIST_PACKAGE_NAMES:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;->isWhitelistedNowNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
