.class public Lcom/google/android/gsf/update/SystemUpdateService;
.super Landroid/app/Service;
.source "SystemUpdateService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/SystemUpdateService$1;,
        Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;,
        Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;,
        Lcom/google/android/gsf/update/SystemUpdateService$SecretCodeReceiver;,
        Lcom/google/android/gsf/update/SystemUpdateService$Receiver;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field static MAINTENANCE_WINDOW_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATH_TO_DISABLE_UPDATE:Ljava/lang/String;

.field private static sUpdatesLockedUntil:J

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLockLock:Ljava/lang/Object;


# instance fields
.field private mDownload:Lcom/google/android/gsf/update/Download;

.field private mDownloadRetry:Lcom/android/common/OperationScheduler;

.field private mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

.field private mIntentPending:Landroid/content/Intent;

.field private mLastBroadcastProgress:I

.field private mLastBroadcastStatus:I

.field private mPending:Landroid/app/PendingIntent;

.field private mPendingLock:Ljava/lang/Object;

.field private mRunning:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStartPending:Z

.field private mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

.field private mVerifierLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "^([0-9][0-9])([0-9][0-9])-([0-9][0-9])([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->MAINTENANCE_WINDOW_PATTERN:Ljava/util/regex/Pattern;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->PATH_TO_DISABLE_UPDATE:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;

    invoke-direct {v0}, Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;-><init>()V

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 297
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLockLock:Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gsf/update/SystemUpdateService;->sUpdatesLockedUntil:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 283
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 284
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 285
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 286
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    .line 288
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    .line 291
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    .line 292
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    .line 293
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    .line 302
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    .line 1249
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 48
    sput-object p0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;
    .param p1, "x1"    # Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->PATH_TO_DISABLE_UPDATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/google/android/gsf/update/SystemUpdateService;->sUpdatesLockedUntil:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    return p1
.end method

.method static synthetic access$600()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static cancelNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1214
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1216
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1217
    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1218
    return-void
.end method

.method public static processUpdateLock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v0, "nowisconvenient"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    sput-wide v2, Lcom/google/android/gsf/update/SystemUpdateService;->sUpdatesLockedUntil:J

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 383
    :cond_1
    const-string v0, "timestamp"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/android/gsf/update/SystemUpdateService;->sUpdatesLockedUntil:J

    goto :goto_0
.end method

.method static whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J
    .locals 7
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const-wide/16 v2, 0x0

    .line 1237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_urgency"

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-wide v2

    .line 1242
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_mobile_network_delay"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 1244
    .local v0, "delay":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1246
    const-string v4, "url_change"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 349
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastStatus:I

    .line 352
    const/4 v1, -0x2

    iput v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastProgress:I

    .line 354
    const-string v1, "update"

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 356
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 358
    new-instance v1, Lcom/google/android/gsf/update/Download;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gsf/update/Download;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 360
    new-instance v1, Lcom/android/common/OperationScheduler;

    const-string v2, "update.download.scheduler"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 363
    new-instance v1, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v1}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 364
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/16 v2, 0x7530

    iput-wide v2, v1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 365
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/32 v2, 0xea60

    iput-wide v2, v1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService$Receiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    .line 370
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 372
    .local v0, "initial":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->processUpdateLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 390
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1256
    const-string v3, "status"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "verify_progress"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "download_progress"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1258
    :cond_0
    const-string v3, "status"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1259
    .local v2, "status":I
    const/4 v1, -0x2

    .line 1260
    .local v1, "progress":I
    packed-switch v2, :pswitch_data_0

    .line 1268
    :goto_0
    iget v3, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastStatus:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastProgress:I

    if-ne v1, v3, :cond_2

    .line 1279
    .end local v1    # "progress":I
    .end local v2    # "status":I
    :cond_1
    :goto_1
    return-void

    .line 1262
    .restart local v1    # "progress":I
    .restart local v2    # "status":I
    :pswitch_0
    const-string v3, "verify_progress"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1263
    goto :goto_0

    .line 1265
    :pswitch_1
    const-string v3, "download_progress"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1270
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.update.SYSTEM_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    const/4 v3, -0x2

    if-eq v1, v3, :cond_3

    .line 1273
    const-string v3, "progress"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastStatus:I

    .line 1276
    iput v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mLastBroadcastProgress:I

    .line 1277
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1260
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x1

    .line 393
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lez v1, :cond_1

    .line 394
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    :cond_0
    const/4 v0, 0x2

    .line 416
    :goto_0
    return v0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    if-nez v2, :cond_3

    .line 402
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    .line 403
    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V

    sget-object v3, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 410
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 411
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    .line 412
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
