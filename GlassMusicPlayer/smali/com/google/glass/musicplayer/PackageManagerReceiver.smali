.class public Lcom/google/glass/musicplayer/PackageManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final PLAY_MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.music"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onXdiPackageFound(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "com.google.android.music"

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Found play music package"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 72
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;-><init>(Lcom/google/glass/musicplayer/PackageManagerReceiver;Landroid/net/Uri;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 31
    sget-object v0, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "received intent=%s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x2

    .line 33
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 40
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_5

    .line 41
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v7, v6

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v8, v6, v3

    .line 42
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v10, "com.google.android.xdi.permission.ACCESS_APP_BROWSE_DATA"

    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    const-string v3, "content://"

    iget-object v1, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    sget-object v3, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "found xdi provider with authority=%s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/musicplayer/PackageManagerReceiver;->onXdiPackageFound(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/net/Uri;)V

    move v0, v2

    :goto_3
    move v1, v0

    .line 53
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_3
    sget-object v0, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setting enabled state=%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v0, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 63
    :goto_4
    return-void

    .line 61
    :cond_4
    sget-object v0, Lcom/google/glass/musicplayer/PackageManagerReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "unhandled action=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3
.end method
