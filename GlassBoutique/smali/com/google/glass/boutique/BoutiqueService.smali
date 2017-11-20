.class public Lcom/google/glass/boutique/BoutiqueService;
.super Landroid/app/Service;
.source "BoutiqueService.java"


# static fields
.field private static final ACTION_SYNC:Ljava/lang/String; = "android.content.SyncAdapter"


# instance fields
.field private accountAuthenticator:Landroid/accounts/AbstractAccountAuthenticator;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private packageHelper:Lcom/google/glass/boutique/PackageHelper;

.field private packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

.field private remoteAccountManagerDebugController:Lcom/google/glass/boutique/RemoteAccountManagerDebugController;

.field private syncAdapter:Lcom/google/glass/boutique/GlasswareSyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/BoutiqueService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/glass/boutique/BoutiqueService;->syncAdapter:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-virtual {v1}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 114
    :cond_0
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/glass/boutique/BoutiqueService;->accountAuthenticator:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-virtual {v1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Action not supported: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 27

    .prologue
    .line 44
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 46
    new-instance v26, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct/range {v26 .. v27}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 49
    .local v26, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/BoutiqueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/accounts/AccountManager;

    .line 50
    .local v16, "accountManager":Landroid/accounts/AccountManager;
    new-instance v17, Lcom/google/glass/boutique/RemoteAccountManager;

    new-instance v3, Lcom/google/android/glass/hidden/HiddenAccountManager;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/google/android/glass/hidden/HiddenAccountManager;-><init>(Landroid/accounts/AccountManager;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/BoutiqueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/google/glass/boutique/RemoteAccountManager;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/glass/hidden/HiddenAccountManager;Landroid/content/pm/PackageManager;)V

    .line 54
    .local v17, "remoteAccountManager":Lcom/google/glass/boutique/RemoteAccountManager;
    new-instance v3, Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lcom/google/glass/boutique/PackageHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/glass/boutique/BoutiqueService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    .line 55
    new-instance v19, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/BoutiqueService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 58
    .local v19, "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    .line 60
    .local v5, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v6

    .line 62
    .local v6, "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v7

    .line 63
    .local v7, "timelineItemLocationHelper":Lcom/google/glass/timeline/TimelineItemLocationHelper;
    new-instance v8, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    .line 65
    .local v8, "timelineNotificationHelper":Lcom/google/glass/timeline/TimelineNotificationHelper;
    new-instance v2, Lcom/google/glass/boutique/GlasswareCardHelper;

    .line 67
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    .line 72
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/glass/boutique/GlasswareCardHelper;-><init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/Executor;)V

    .line 74
    .local v2, "glasswareCardHelper":Lcom/google/glass/boutique/GlasswareCardHelper;
    new-instance v23, Lcom/google/glass/boutique/GlasswareSyncPreferences;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/glass/boutique/GlasswareSyncPreferences;-><init>(Landroid/content/Context;)V

    .line 76
    .local v23, "glasswareSyncPreferences":Lcom/google/glass/boutique/GlasswareSyncPreferences;
    new-instance v3, Lcom/google/glass/boutique/PackageManagerServiceConnection;

    invoke-direct {v3}, Lcom/google/glass/boutique/PackageManagerServiceConnection;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/glass/boutique/BoutiqueService;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/boutique/BoutiqueService;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 79
    new-instance v9, Lcom/google/glass/boutique/GlasswareSyncAdapter;

    .line 80
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/boutique/BoutiqueService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    new-instance v13, Lcom/google/glass/boutique/VersionHelper;

    invoke-direct {v13}, Lcom/google/glass/boutique/VersionHelper;-><init>()V

    new-instance v14, Lcom/google/glass/util/BatteryHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    new-instance v18, Lcom/google/glass/tutorial/TutorialStatusContract;

    invoke-direct/range {v18 .. v18}, Lcom/google/glass/tutorial/TutorialStatusContract;-><init>()V

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v20

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/BoutiqueService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    new-instance v24, Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-direct/range {v24 .. v24}, Lcom/google/glass/boutique/BoutiqueQueryHelper;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/BoutiqueService;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    move-object/from16 v25, v0

    move-object/from16 v10, p0

    move-object/from16 v22, v2

    invoke-direct/range {v9 .. v25}, Lcom/google/glass/boutique/GlasswareSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/boutique/PackageHelper;Lcom/google/glass/boutique/VersionHelper;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Landroid/accounts/AccountManager;Lcom/google/glass/boutique/RemoteAccountManager;Lcom/google/glass/tutorial/TutorialStatusContract;Lcom/google/glass/util/SettingsSecure;Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/content/ContentResolver;Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/glass/boutique/GlasswareSyncPreferences;Lcom/google/glass/boutique/BoutiqueQueryHelper;Lcom/google/glass/boutique/PackageManagerServiceConnection;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/glass/boutique/BoutiqueService;->syncAdapter:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    .line 95
    new-instance v3, Lcom/google/glass/boutique/RemoteAccountAuthenticator;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/BoutiqueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/boutique/RemoteAccountAuthenticator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/glass/boutique/BoutiqueService;->accountAuthenticator:Landroid/accounts/AbstractAccountAuthenticator;

    .line 97
    new-instance v3, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;-><init>(Lcom/google/glass/boutique/RemoteAccountManager;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/glass/boutique/BoutiqueService;->remoteAccountManagerDebugController:Lcom/google/glass/boutique/RemoteAccountManagerDebugController;

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/boutique/BoutiqueService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageHelper;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/google/glass/boutique/BoutiqueService;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 105
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x2

    .line 123
    iget-object v1, p0, Lcom/google/glass/boutique/BoutiqueService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand(intent: [%s], flags: [%s], startId: [%s])"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/google/glass/boutique/BoutiqueService;->remoteAccountManagerDebugController:Lcom/google/glass/boutique/RemoteAccountManagerDebugController;

    invoke-virtual {v1, p1}, Lcom/google/glass/boutique/RemoteAccountManagerDebugController;->handleIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
