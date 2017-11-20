.class public Lcom/google/android/clockwork/tilt/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCELEROMETER_FEATURE_TAG:Ljava/lang/String; = "accelerometerdata"

.field public static final FIRST_TOUCH_INTENT:Ljava/lang/String; = "com.google.android.clockwork.FIRST_TOUCH"

.field public static final KEY_ACCELEROMETER_DATA:Ljava/lang/String; = "accelerometer_data"

.field public static final KEY_ACCELEROMETER_DIMENSIONS:Ljava/lang/String; = "accelerometer_dimensions"

.field public static final KEY_ACCELEROMETER_TIME:Ljava/lang/String; = "accelerometer_time"

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final PATH_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final STORE_TILT_DATA_COMMAND:Ljava/lang/String; = "store_tilt_data"

.field public static final STORE_TILT_DATA_RPC_NODE:Ljava/lang/String; = "othernode"

.field public static final TILT_DATA_INTENT:Ljava/lang/String; = "com.google.android.clockwork.TILT_DATA_RECEIVED"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "accelerometerdata"

    const-string v1, "/rpc"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/tilt/Constants;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
