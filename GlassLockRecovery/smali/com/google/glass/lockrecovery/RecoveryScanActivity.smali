.class public Lcom/google/glass/lockrecovery/RecoveryScanActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "RecoveryScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/lockrecovery/RecoveryScanActivity$2;
    }
.end annotation


# static fields
.field public static final BARCODE_1_PARAM_CODE:Ljava/lang/String; = "c"

.field public static final BARCODE_PARAM_VERSION:Ljava/lang/String; = "v"

.field private static final BARCODE_SCAN_TIMEOUT_NANOS:J

.field private static final CAMERA_FRAME_MODULUS:I = 0x4

.field public static final EXTRA_ERROR:Ljava/lang/String; = "return_error"


# instance fields
.field private barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

.field barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private codeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->BARCODE_SCAN_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 69
    new-instance v0, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/lockrecovery/RecoveryScanActivity$1;-><init>(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)V

    iput-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/lockrecovery/RecoveryScanActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private parseVersion1Code(Ljava/util/Map;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .local p1, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 192
    :try_start_0
    const-string v3, "c"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 198
    .local v1, "recoveryCode":J
    iget-object v3, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Found a valid recovery code."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-wide v1

    .line 193
    .end local v1    # "recoveryCode":J
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Invalid recovery code %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "c"

    .line 195
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    .line 194
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method


# virtual methods
.method extractScannedUnlockCode(Lcom/google/android/libraries/barhopper/Barcode;)J
    .locals 13
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 151
    iget-object v4, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    .line 153
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Couldn\'t parse barcode value -- barcode value is empty!"

    invoke-direct {v6, v7, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 157
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "parameterList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v4}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-static {v2, v6, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 165
    .local v3, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 166
    .local v1, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v1    # "nameValuePair":Lorg/apache/http/NameValuePair;
    .end local v3    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Couldn\'t parse barcode!"

    invoke-direct {v6, v7, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v6, "v"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 177
    .local v5, "version":I
    iget-object v6, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Found a version %d barcode."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    if-ne v5, v11, :cond_2

    .line 180
    invoke-direct {p0, v3}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->parseVersion1Code(Ljava/util/Map;)J

    move-result-wide v6

    return-wide v6

    .line 173
    .end local v5    # "version":I
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Couldn\'t extract barcode version."

    invoke-direct {v6, v7, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 183
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "version":I
    :cond_2
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Unknown barcode version %d."

    new-array v8, v11, [Ljava/lang/Object;

    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 11
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    const-wide/16 v3, 0x0

    .line 213
    .local v3, "unlockCode":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->extractScannedUnlockCode(Lcom/google/android/libraries/barhopper/Barcode;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 220
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->codeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    invoke-virtual {v7, v3, v4}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->codeMatches(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    iget-object v6, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Code provided doesn\'t match!"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_0
    return v5

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/text/ParseException;
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Couldn\'t parse barcode. Format: %d, ValueFormat: %d, Value: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget v10, p1, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    iget-object v10, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    aput-object v10, v9, v6

    .line 215
    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Recovery code matches stored code -- playing sound and resetting the lockscreen."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->getInstance()Lcom/google/glass/android/glass/security/LockScreenManagerProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->get()Lcom/google/glass/android/glass/security/LockScreenManager;

    move-result-object v1

    .line 228
    .local v1, "lockscreenManager":Lcom/google/glass/android/glass/security/LockScreenManager;
    if-nez v1, :cond_1

    .line 229
    iget-object v6, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unable to get an instance of the LockScreenManager service -- BUG!"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {v1}, Lcom/google/glass/android/glass/security/LockScreenManager;->reset()V

    .line 234
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v7

    sget-object v8, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v7, v8}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 235
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RESCUE_UNLOCKED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 237
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Jumping to the lockscreen settings card."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/google/glass/util/SettingsHelperProvider;->getInstance()Lcom/google/glass/util/SettingsHelperProvider;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/google/glass/util/SettingsHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/SettingsHelper;

    move-result-object v2

    .line 239
    .local v2, "settingsHelper":Lcom/google/glass/util/SettingsHelper;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 241
    iget-object v7, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Finishing."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v7, v8, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->finish()V

    move v5, v6

    .line 243
    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->setResult(I)V

    .line 110
    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->getInstance()Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->codeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    .line 111
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 115
    sget v2, Lcom/google/glass/lockrecovery/R$id;->label:I

    invoke-virtual {p0, v2}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "label":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/lockrecovery/R$string;->scanner_label:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, "window":Landroid/view/Window;
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 124
    invoke-virtual {v2, v3}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->withCameraFrameModulus(I)Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v2

    sget-wide v3, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->BARCODE_SCAN_TIMEOUT_NANOS:J

    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->withScanTimeoutNanos(J)Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScannerListener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    iget-object v4, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 127
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v5

    .line 126
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)Lcom/google/glass/barcode/BarcodeScanner;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    .line 129
    iget-object v3, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    sget v2, Lcom/google/glass/lockrecovery/R$id;->viewfinder:I

    invoke-virtual {p0, v2}, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Lcom/google/glass/barcode/BarcodeScanner;->setViewfinder(Landroid/view/TextureView;)V

    .line 130
    return-void
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 146
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 147
    return-void
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 140
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->startScanning()V

    .line 141
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/google/glass/lockrecovery/R$layout;->qr_scan:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method
