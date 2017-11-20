.class Lcom/google/glass/boutique/GlasswareSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "GlasswareSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;,
        Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;
    }
.end annotation


# static fields
.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

.field private final glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

.field private installsInprogress:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final packageHelper:Lcom/google/glass/boutique/PackageHelper;

.field private final packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

.field private final queryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

.field private final remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

.field private final settingsSecure:Lcom/google/glass/util/SettingsSecure;

.field private final tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

.field private final versionHelper:Lcom/google/glass/boutique/VersionHelper;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/boutique/GlasswareSyncAdapter$1;

    invoke-direct {v1}, Lcom/google/glass/boutique/GlasswareSyncAdapter$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/boutique/PackageHelper;Lcom/google/glass/boutique/VersionHelper;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Landroid/accounts/AccountManager;Lcom/google/glass/boutique/RemoteAccountManager;Lcom/google/glass/tutorial/TutorialStatusContract;Lcom/google/glass/util/SettingsSecure;Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/content/ContentResolver;Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/glass/boutique/GlasswareSyncPreferences;Lcom/google/glass/boutique/BoutiqueQueryHelper;Lcom/google/glass/boutique/PackageManagerServiceConnection;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p3, "packageHelper"    # Lcom/google/glass/boutique/PackageHelper;
    .param p4, "versionHelper"    # Lcom/google/glass/boutique/VersionHelper;
    .param p5, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p6, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p7, "accountManager"    # Landroid/accounts/AccountManager;
    .param p8, "remoteAccountManager"    # Lcom/google/glass/boutique/RemoteAccountManager;
    .param p9, "tutorialStatusContract"    # Lcom/google/glass/tutorial/TutorialStatusContract;
    .param p10, "settingsSecure"    # Lcom/google/glass/util/SettingsSecure;
    .param p11, "listeningExecutorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p12, "contentResolver"    # Landroid/content/ContentResolver;
    .param p13, "glasswareCardHelper"    # Lcom/google/glass/boutique/GlasswareCardHelper;
    .param p14, "glasswareSyncPreferences"    # Lcom/google/glass/boutique/GlasswareSyncPreferences;
    .param p15, "queryHelper"    # Lcom/google/glass/boutique/BoutiqueQueryHelper;
    .param p16, "packageManagerServiceConnection"    # Lcom/google/glass/boutique/PackageManagerServiceConnection;

    .prologue
    .line 120
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 121
    sget-object v1, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating a new GlasswareSyncAdapter"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 124
    iput-object p3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    .line 125
    iput-object p4, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->versionHelper:Lcom/google/glass/boutique/VersionHelper;

    .line 126
    iput-object p5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 127
    iput-object p6, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 128
    iput-object p7, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->accountManager:Landroid/accounts/AccountManager;

    .line 129
    iput-object p8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    .line 130
    iput-object p9, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    .line 131
    iput-object p10, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    .line 132
    iput-object p11, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 133
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 134
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

    .line 135
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

    .line 136
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->queryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .line 137
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    .line 138
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/GlasswareCardHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareSyncAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/PackageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareSyncAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    return-object v0
.end method

.method private handleAccount(Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "account"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/glass/boutique/HandleAccountRunnable;

    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->remoteAccountManager:Lcom/google/glass/boutique/RemoteAccountManager;

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->accountManager:Landroid/accounts/AccountManager;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/glass/boutique/HandleAccountRunnable;-><init>(Lcom/google/glass/boutique/RemoteAccountManager;Landroid/accounts/AccountManager;Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private handleDisabledGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 5
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 518
    sget-object v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Handling disabled glassware [%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getBoundService()Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->uninstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    .line 520
    return-void
.end method

.method private handleEnabledGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 493
    sget-object v2, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Handling enabled glassware [%s]."

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-interface {v2, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    .line 495
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/glass/boutique/PackageHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 496
    .local v3, "isUpdate":Z
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

    invoke-virtual {v2}, Lcom/google/glass/boutique/GlasswareSyncPreferences;->hasSynced()Z

    move-result v5

    .line 498
    .local v5, "showCard":Z
    const/4 v4, 0x0

    .line 499
    .local v4, "isVersionUpdate":Z
    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v2

    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    .line 501
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/glass/boutique/PackageHelper;->getPackageVersion(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v2, v8, :cond_2

    move v4, v0

    .line 504
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 505
    .local v6, "timelineItemId":Ljava/lang/String;
    if-nez v3, :cond_1

    if-eqz v5, :cond_1

    .line 506
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

    sget-object v1, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_PENDING:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/boutique/GlasswareCardHelper;->insertGlasswareCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;

    move-result-object v6

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    .line 509
    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getBoundService()Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->installGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    .line 511
    .local v7, "installFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;-><init>(Lcom/google/glass/boutique/GlasswareSyncAdapter;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;ZZZLjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 514
    return-object v7

    .end local v6    # "timelineItemId":Ljava/lang/String;
    .end local v7    # "installFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    :cond_2
    move v4, v1

    .line 501
    goto :goto_0
.end method

.method private makeSyncRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/google/glass/net/ProtoResponse;
    .locals 8
    .param p1, "glassVersion"    # I
    .param p2, "buildType"    # Ljava/lang/String;
    .param p3, "buildFingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v4, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;-><init>()V

    .line 250
    .local v4, "request":Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    invoke-virtual {v4, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->setGlassVersion(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 251
    invoke-virtual {v4, p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->setGlassBuildType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 252
    invoke-virtual {v4, p3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->setGlassBuildFingerprint(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 253
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

    invoke-virtual {v5}, Lcom/google/glass/boutique/GlasswareSyncPreferences;->getLastSyncedTimestampUs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->setLastSyncedTimestampUs(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 254
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    const-string v6, "android_id"

    invoke-virtual {v5, v6}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 256
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v5}, Lcom/google/glass/boutique/PackageHelper;->getInstalledPackageList()Ljava/util/List;

    move-result-object v2

    .line 257
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "apkMetadatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 259
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    .line 260
    .local v0, "apkMetadata":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setVersionNumber(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 261
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 262
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "apkMetadata":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    .line 265
    invoke-virtual {v5}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getBoundService()Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->getAllGlasswareUninstalledByUser()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 264
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    iput-object v5, v4, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 270
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->GLASSWARE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/glass/boutique/GlasswareSyncAdapter;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v5, v6, v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v5

    return-object v5
.end method

.method private updateMetadataInDbAndNotify([Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 10
    .param p1, "installedGlassware"    # [Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    const/4 v9, 0x0

    .line 426
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->queryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v3

    .line 430
    .local v3, "previouslyEnabledMirrorSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, p1

    new-array v2, v4, [Landroid/content/ContentValues;

    .line 431
    .local v2, "metadataToInsert":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 432
    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/google/glass/boutique/BoutiqueUtils;->toContentValues(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v1

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Bulk inserting glassware metadata into provider [num=%d]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, v2

    .line 436
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 435
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 447
    aget-object v4, p1, v1

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->notifyIfMirrorGlasswareChanged(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Ljava/util/Set;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 438
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Updating metadata in database failed."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method notifyIfMirrorGlasswareChanged(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Ljava/util/Set;)V
    .locals 8
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p2, "previouslyEnabledMirrorSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasMirrorMetadata()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getMirrorMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;->hasProjectId()Z

    move-result v3

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v3, "api:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getMirrorMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;->getProjectId()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "source":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 464
    .local v2, "wasEnabled":Z
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.ACTION_GLASSWARE_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "EXTRA_MIRROR_SOURCE_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v3, "EXTRA_GLASSWARE_ENABLED"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

    invoke-virtual {v3}, Lcom/google/glass/boutique/GlasswareSyncPreferences;->hasSynced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsHiddenFromUi()Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

    sget-object v4, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_COMPLETE:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v3, p1, v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->insertGlasswareCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 176
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareCardHelper:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/GlasswareCardHelper;->cleanupOldGlasswareCards()V

    .line 177
    const-string v8, "com.google.glass.sync.PERIODIC_SYNC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 180
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v8}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v7

    .line 181
    .local v7, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget-boolean v8, v7, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v8, :cond_0

    iget v8, v7, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v9, 0x42480000    # 50.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 182
    :cond_0
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Abandoning sync due to insufficient power. Will retry later."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .end local v7    # "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    :goto_0
    return-void

    .line 185
    .restart local v7    # "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    :cond_1
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v8}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v8

    if-nez v8, :cond_2

    .line 186
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Abandoning sync because not connected via Wifi. Will retry later."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    .end local v7    # "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;->updateStats(Landroid/content/SyncResult;)V

    goto :goto_0

    .line 191
    .end local v3    # "e":Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->versionHelper:Lcom/google/glass/boutique/VersionHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/VersionHelper;->getGlassVersion()I

    move-result v4

    .line 192
    .local v4, "glassVersion":I
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->versionHelper:Lcom/google/glass/boutique/VersionHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/VersionHelper;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "buildFingerprint":Ljava/lang/String;
    if-ltz v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 194
    :cond_3
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Abandoning sync due to invalid version."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    .end local v1    # "buildFingerprint":Ljava/lang/String;
    .end local v4    # "glassVersion":I
    :catch_1
    move-exception v3

    .line 240
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unexpected Exception occurred"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v8, 0x1

    move-object/from16 v0, p5

    iput-boolean v8, v0, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_0

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "buildFingerprint":Ljava/lang/String;
    .restart local v4    # "glassVersion":I
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->versionHelper:Lcom/google/glass/boutique/VersionHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/VersionHelper;->getGlassBuildType()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "buildType":Ljava/lang/String;
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Syncing Glassware using [glassVersion=%s, buildType=%s, fingerprint=%s]."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    .line 200
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    :try_start_3
    invoke-direct {p0, v4, v2, v1}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->makeSyncRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/google/glass/net/ProtoResponse;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 213
    .local v6, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;>;"
    :try_start_4
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 214
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 215
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to sync due to network error. Will retry later."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    move-object/from16 v0, p5

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    .line 207
    .end local v6    # "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;>;"
    :catch_2
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/InterruptedException;
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to contact the Client Proxy server."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;>;"
    :cond_5
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 222
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Quitting due to unrecoverable error: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 226
    :cond_6
    invoke-virtual {v6}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    .line 228
    .local v5, "proto":Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    const/4 v8, 0x2

    const-string v9, "GlasswareSyncAdapter"

    const-string v10, "Received installed Glassware list from the server:\n%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 230
    invoke-static {v5}, Lcom/google/glass/protobuf/ProtoDebugUtils;->lazyAsciiDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 229
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->processGlasswareSyncResponse(Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;)V

    .line 233
    iget-object v8, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/PackageHelper;->cleanupDownloadedFiles()V

    .line 234
    sget-object v8, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Glassware sync complete."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public declared-synchronized onSyncCanceled()V
    .locals 8

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v3}, Lcom/google/glass/boutique/PackageHelper;->onCancel()V

    .line 147
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 148
    .local v2, "installs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 149
    if-eqz v2, :cond_0

    .line 150
    sget-object v3, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Canceling Glassware sync with %d items"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 152
    .local v1, "install":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z
    :try_end_0
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1    # "install":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    .end local v2    # "installs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    :catch_0
    move-exception v0

    .line 166
    :goto_1
    monitor-exit p0

    return-void

    .line 155
    .restart local v2    # "installs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Canceling Glassware sync - Nothing to cancel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V
    :try_end_1
    .catch Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 162
    .end local v2    # "installs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unexpected Exception occurred."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method processGlasswareSyncResponse(Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;)V
    .locals 27
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->getHasCompletedTutorialTask()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 279
    invoke-virtual/range {v21 .. v23}, Lcom/google/glass/tutorial/TutorialStatusContract;->isComplete(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;)Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    const/16 v19, 0x1

    .line 281
    .local v19, "tutorialTaskCompleted":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/tutorial/TutorialStatusContract;->setCompletionStatusAsync(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 288
    new-instance v15, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v15}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 296
    .local v15, "installsInprogressBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v21, v0

    .line 297
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/boutique/PackageHelper;->getActiveDownloads()Ljava/util/Map;

    move-result-object v17

    .line 298
    .local v17, "mutableActiveDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 299
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-object/from16 v21, v0

    aget-object v12, v21, v13

    .line 300
    .local v12, "glassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v21

    if-nez v21, :cond_2

    .line 298
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 279
    .end local v12    # "glassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .end local v13    # "i":I
    .end local v15    # "installsInprogressBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    .end local v17    # "mutableActiveDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    .end local v19    # "tutorialTaskCompleted":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 283
    .restart local v19    # "tutorialTaskCompleted":Z
    :catch_0
    move-exception v11

    .line 284
    .local v11, "e":Ljava/lang/Exception;
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Setting tutorial state failed."

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 306
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "glassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .restart local v13    # "i":I
    .restart local v15    # "installsInprogressBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    .restart local v17    # "mutableActiveDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIsEnabled()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 308
    :try_start_1
    new-instance v21, Landroid/util/Pair;

    .line 309
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->handleEnabledGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 310
    :catch_1
    move-exception v11

    .line 311
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Failed to start Sync for Glassware #%X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/boutique/PackageHelper;->onCancel()V

    .line 317
    invoke-virtual {v15}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 318
    .local v8, "canceling":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/common/util/concurrent/ListenableFuture;

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_4

    .line 320
    .end local v8    # "canceling":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    :cond_3
    new-instance v21, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;-><init>(ZLjava/lang/Throwable;)V

    throw v21

    .line 323
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->handleDisabledGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    goto/16 :goto_3

    .line 327
    .end local v12    # "glassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :cond_5
    invoke-virtual {v15}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "download"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/DownloadManager;

    .line 332
    .local v10, "downloadManager":Landroid/app/DownloadManager;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 333
    .local v9, "downloadId":Ljava/lang/Long;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    aput-wide v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_5

    .line 336
    .end local v9    # "downloadId":Ljava/lang/Long;
    .end local v10    # "downloadManager":Landroid/app/DownloadManager;
    .end local v13    # "i":I
    .end local v15    # "installsInprogressBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    .end local v17    # "mutableActiveDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    :cond_6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 339
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v16, v0

    .line 342
    .local v16, "localInstallsInprogress":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;>;"
    if-nez v16, :cond_8

    .line 344
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Sync interupted exiting before waiting for package installation"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :goto_6
    return-void

    .line 349
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 351
    .local v14, "installing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    :try_start_2
    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface/range {v21 .. v21}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    .line 352
    :catch_2
    move-exception v11

    .line 353
    .local v11, "e":Ljava/lang/InterruptedException;
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Installation interrupted of Glassware #%X."

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/boutique/PackageHelper;->onCancel()V

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v22

    :goto_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 357
    .local v20, "workToCancel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/common/util/concurrent/ListenableFuture;

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_8

    .line 359
    .end local v20    # "workToCancel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    :cond_9
    new-instance v21, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;-><init>(ZLjava/lang/Throwable;)V

    throw v21

    .line 360
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v11

    .line 361
    .local v11, "e":Ljava/lang/Exception;
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Failed to sync Glassware #%X."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 364
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "installing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;>;"
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 369
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Sync interupted exiting before setting accounts"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 372
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/boutique/GlasswareSyncAdapter;->installsInprogress:Lcom/google/common/collect/ImmutableList;

    .line 381
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v7

    .line 383
    .local v7, "accountResultFutures":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 384
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_9
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    aget-object v4, v22, v21

    .line 385
    .local v4, "account":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->handleAccount(Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v7, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 390
    .end local v4    # "account":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :cond_c
    invoke-interface {v7}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 391
    .local v6, "accountResultFutureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 392
    .local v18, "packageName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 394
    .local v5, "accountResultFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    :try_start_3
    invoke-interface {v5}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_a

    .line 395
    :catch_4
    move-exception v11

    .line 396
    .local v11, "e":Ljava/lang/InterruptedException;
    sget-object v22, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Failed to process remote account sync for package: [%s]"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a

    .line 399
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v11

    .line 400
    .local v11, "e":Ljava/lang/Exception;
    sget-object v22, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Failed to process remote account sync for package: [%s]"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v11, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 403
    .end local v5    # "accountResultFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    .end local v6    # "accountResultFutureEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;>;"
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 408
    sget-object v21, Lcom/google/glass/boutique/GlasswareSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "Sync interupted exiting before setting last sync timestamp"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 413
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 414
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->updateMetadataInDbAndNotify([Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    .line 421
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareSyncAdapter;->glasswareSyncPreferences:Lcom/google/glass/boutique/GlasswareSyncPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->getSyncTimestampUs()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/google/glass/boutique/GlasswareSyncPreferences;->setLastSyncedTimestampUs(J)V

    goto/16 :goto_6
.end method
