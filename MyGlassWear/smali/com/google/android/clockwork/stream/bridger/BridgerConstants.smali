.class public final Lcom/google/android/clockwork/stream/bridger/BridgerConstants;
.super Ljava/lang/Object;
.source "BridgerConstants.java"


# static fields
.field public static final BRIDGED_NOTIFICATION_TAG:Ljava/lang/String; = "bridged_notification"

.field public static final EXTRA_ACTION_INDEX:Ljava/lang/String; = "action_index"

.field public static final EXTRA_CREATOR_NODE_ID:Ljava/lang/String; = "com.google.android.wearable.stream.CREATOR_NODE_ID"

.field public static final EXTRA_IS_WEARABLE_ACTION:Ljava/lang/String; = "is_wearable_action"

.field public static final EXTRA_REMOTE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"

.field public static final EXTRA_REMOTE_STREAM_ITEM_ID:Ljava/lang/String; = "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

.field public static final FEATURE_TAG:Ljava/lang/String; = "bridger"

.field public static final PATH_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final RPC_PATH:Ljava/lang/String; = "/rpc"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "bridger"

    const-string v1, "/rpc"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/stream/bridger/BridgerConstants;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
