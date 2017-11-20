.class public final Lcom/google/android/location/app/service/PackageBroadcastService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PackageBroadcastService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/app/service/PackageBroadcastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string v1, "broadcastIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 41
    const-string v0, "broadcastIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    const-string v1, ""

    .line 45
    :goto_0
    const-string v3, "PackageBroadcastService"

    const-string v4, "Received broadcast action=%s and uri=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/z;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/z;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 51
    :cond_3
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-direct {p0, v0}, Lcom/google/android/location/app/service/PackageBroadcastService;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 53
    :cond_4
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/location/app/service/PackageBroadcastService;->a(Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/z;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 55
    :cond_5
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/GmsAutoStarter;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
