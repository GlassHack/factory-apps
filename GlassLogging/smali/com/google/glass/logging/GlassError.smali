.class public final enum Lcom/google/glass/logging/GlassError;
.super Ljava/lang/Enum;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/GlassError$3;,
        Lcom/google/glass/logging/GlassError$ErrorAttachment;,
        Lcom/google/glass/logging/GlassError$ReportAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/logging/GlassError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/GlassError;

.field public static final enum BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum CAMERA_PRELOAD_CANCEL:Lcom/google/glass/logging/GlassError;

.field public static final enum COMPASS_SETUP_FAILS:Lcom/google/glass/logging/GlassError;

.field public static final enum CONTROLLER_TIMED_OUT:Lcom/google/glass/logging/GlassError;

.field public static final enum FPGA_RESET:Lcom/google/glass/logging/GlassError;

.field public static final enum HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum REALTIME_CLOCK_FALLBACK:Lcom/google/glass/logging/GlassError;

.field public static final enum SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum SYSTEM_SERVER_RESTART:Lcom/google/glass/logging/GlassError;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum TWL_RESET:Lcom/google/glass/logging/GlassError;

.field private static final USER_EVENT_WRITE_DELAY:J


# instance fields
.field public final errorAttachments:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/logging/GlassError$ErrorAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

.field public final reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

.field public final signature:Ljava/lang/String;

.field public final userEventData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "FPGA_RESET"

    const-string v3, "WARNING: Probable deconfiguration of FPGA, reconfiguring ..."

    const-string v4, "FPGA resets"

    sget-object v5, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v6, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v7, "17"

    new-array v8, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->FPGA_RESET:Lcom/google/glass/logging/GlassError;

    .line 30
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "TWL_RESET"

    const-string v6, "WARNING: TWL6040 glitch detected and ACCCTL i2cMode is reset"

    const-string v7, "TWL-6040 resets"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "16"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->TWL_RESET:Lcom/google/glass/logging/GlassError;

    .line 37
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "COMPASS_SETUP_FAILS"

    const-string v6, "inv_mpu_iio: compass setup failed"

    const-string v7, "Compass setup fails"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "18"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move v5, v13

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->COMPASS_SETUP_FAILS:Lcom/google/glass/logging/GlassError;

    .line 46
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "CONTROLLER_TIMED_OUT"

    const-string v6, "omap_i2c omap_i2c.4: controller timed out"

    const-string v7, "Controller timed out"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "19"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move v5, v14

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->CONTROLLER_TIMED_OUT:Lcom/google/glass/logging/GlassError;

    .line 53
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "TOUCHPAD_ERROR"

    const-string v6, "Unable to find or reset touchpad device"

    const-string v7, "Touchpad error"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "10"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    move v5, v15

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    .line 62
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "MEM_HEAP_ERROR"

    const/4 v5, 0x5

    const-string v6, "@@@ ABORTING: HEAP MEMORY CORRUPTION"

    const-string v7, "Memory heap error"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "12"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 71
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "HEAP_ADDR_ERROR"

    const/4 v5, 0x6

    const-string v6, "@@@ ABORTING: INVALID HEAP ADDRESS"

    const-string v7, "Heap address error"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "13"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    .line 80
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "SYSPROXY_TEARDOWN_ERROR"

    const/4 v5, 0x7

    const-string v6, "@@@ SYSPROXY TEARDOWN FAILED"

    const-string v7, "sysproxy teardown error"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "15"

    new-array v11, v12, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

    .line 89
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "REALTIME_CLOCK_FALLBACK"

    const/16 v5, 0x8

    const-string v6, "@@@ REALTIME CLOCK FALLBACK"

    const-string v7, "realtime clock fallback"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "20"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->REALTIME_CLOCK_FALLBACK:Lcom/google/glass/logging/GlassError;

    .line 97
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "CAMERA_PRELOAD_CANCEL"

    const/16 v5, 0x9

    const-string v6, "CameraService: Releasing preload camera"

    const-string v7, "Camera preload cancel"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "21"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->CAMERA_PRELOAD_CANCEL:Lcom/google/glass/logging/GlassError;

    .line 116
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "BLUETOOTH_MEM_HEAP_ERROR"

    const/16 v5, 0xa

    const-string v6, ">>> com.google.glass.bluetooth <<<"

    const-string v7, "Bluetooth memory heap error"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->NONE:Lcom/google/glass/logging/GlassError$ReportAction;

    const/4 v10, 0x0

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 123
    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "SYSTEM_SERVER_RESTART"

    const/16 v5, 0xb

    const-string v6, "SystemServer: Entered the Android system server"

    const-string v7, "system_server restart"

    sget-object v8, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "22"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->SYSTEM_SERVER_RESTART:Lcom/google/glass/logging/GlassError;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/glass/logging/GlassError;

    sget-object v1, Lcom/google/glass/logging/GlassError;->FPGA_RESET:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/logging/GlassError;->TWL_RESET:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/glass/logging/GlassError;->COMPASS_SETUP_FAILS:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/glass/logging/GlassError;->CONTROLLER_TIMED_OUT:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/logging/GlassError;->SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/logging/GlassError;->REALTIME_CLOCK_FALLBACK:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/logging/GlassError;->CAMERA_PRELOAD_CANCEL:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/logging/GlassError;->SYSTEM_SERVER_RESTART:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    .line 144
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    .line 147
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/GlassError;->USER_EVENT_WRITE_DELAY:J

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/feedback/RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V
    .locals 1
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "recoveryAction"    # Lcom/google/glass/feedback/RecoveryAction;
    .param p6, "reportAction"    # Lcom/google/glass/logging/GlassError$ReportAction;
    .param p7, "userEventData"    # Ljava/lang/String;
    .param p8, "errorAttachments"    # [Lcom/google/glass/logging/GlassError$ErrorAttachment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/glass/feedback/RecoveryAction;",
            "Lcom/google/glass/logging/GlassError$ReportAction;",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/glass/logging/GlassError$ErrorAttachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput-object p3, p0, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 176
    iput-object p6, p0, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    .line 177
    iput-object p7, p0, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    .line 178
    array-length v0, p8

    if-nez v0, :cond_0

    .line 180
    const-class v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    goto :goto_0
.end method

.method private static logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Lcom/google/glass/logging/GlassError;

    .prologue
    .line 244
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG_ERROR:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventHelper;->saveToDisk()V

    .line 249
    return-void
.end method

.method public static report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Lcom/google/glass/logging/GlassError;

    .prologue
    .line 198
    sget-object v2, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    const-string v3, "Reporting error: "

    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "recoveryTask":Ljava/lang/Runnable;
    sget-object v1, Lcom/google/glass/logging/GlassError$3;->$SwitchMap$com$google$glass$logging$GlassError$ReportAction:[I

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v2}, Lcom/google/glass/logging/GlassError$ReportAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 230
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected report action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 198
    .end local v0    # "recoveryTask":Ljava/lang/Runnable;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .restart local v0    # "recoveryTask":Ljava/lang/Runnable;
    :pswitch_0
    new-instance v0, Lcom/google/glass/logging/GlassError$1;

    .end local v0    # "recoveryTask":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/google/glass/logging/GlassError$1;-><init>(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 235
    .restart local v0    # "recoveryTask":Ljava/lang/Runnable;
    :goto_1
    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 236
    invoke-static {p0, p1}, Lcom/google/glass/logging/GlassError;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 238
    :cond_1
    if-eqz v0, :cond_2

    .line 239
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-wide v2, Lcom/google/glass/logging/GlassError;->USER_EVENT_WRITE_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :cond_2
    :pswitch_1
    return-void

    .line 222
    :pswitch_2
    new-instance v0, Lcom/google/glass/logging/GlassError$2;

    .end local v0    # "recoveryTask":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/google/glass/logging/GlassError$2;-><init>(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 228
    .restart local v0    # "recoveryTask":Ljava/lang/Runnable;
    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/GlassError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/GlassError;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/GlassError;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, [Lcom/google/glass/logging/GlassError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/GlassError;

    return-object v0
.end method


# virtual methods
.method public shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z
    .locals 1
    .param p1, "errorAttachment"    # Lcom/google/glass/logging/GlassError$ErrorAttachment;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
