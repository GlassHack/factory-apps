.class public Lcom/google/glass/util/StorageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FULL_FILTER:Landroid/content/IntentFilter;

.field private static final LOW_FILTER:Landroid/content/IntentFilter;

.field protected static final MEDIUM_THRESHOLD:F = 0.3f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mediumThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/StorageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/StorageHelper;->FULL_FILTER:Landroid/content/IntentFilter;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/StorageHelper;->LOW_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->calculateMediumThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/StorageHelper;->mediumThreshold:J

    .line 51
    return-void
.end method

.method public static getHumanReadableByteCount(J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 149
    const/16 v0, 0x400

    .line 150
    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    long-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 154
    const-string v2, "KMGTPE"

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v3, "%.1f %sB"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p0

    int-to-double v8, v0

    int-to-double v0, v1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initializeThresholds(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    sget v2, Lcom/google/glass/common/R$integer;->sys_storage_threshold_percentage:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 62
    sget v3, Lcom/google/glass/common/R$integer;->sys_storage_threshold_bytes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 63
    const-string v3, "sys_storage_threshold_percentage"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    const-string v2, "sys_storage_full_threshold_bytes"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/google/glass/util/StorageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error initializing thresholds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isExternalStorageMedium()Z
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/util/StorageHelper;->mediumThreshold:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateMediumThreshold()J
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getTotalBytesInExternalStorage()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getAvailableBytesInExternalStorage()J
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 76
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 78
    sget-object v0, Lcom/google/glass/util/StorageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Total size in bytes available: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-wide v2

    .line 80
    :catch_0
    move-exception v0

    .line 83
    sget-object v2, Lcom/google/glass/util/StorageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to get stats for path: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    throw v0
.end method

.method public getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    .line 111
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->LOW:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/util/StorageHelper;->isExternalStorageMedium()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->MEDIUM:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->GOOD:Lcom/google/glass/util/StorageHelper$State;

    goto :goto_0
.end method

.method public getHumanReadableAvailableByteCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/util/StorageHelper;->getHumanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytesInExternalStorage()J
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 92
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    sget-object v2, Lcom/google/glass/util/StorageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to get stats for path: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    throw v0
.end method

.method protected isExternalStorageFull(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/util/StorageHelper;->FULL_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isExternalStorageLow(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/util/StorageHelper;->LOW_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialogIfFull()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFullStorageDialog()V
    .locals 5

    .prologue
    .line 134
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v1, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->full_storage_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/google/glass/util/StorageHelper;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->storage_dialog_sub_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 139
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 140
    return-void
.end method
