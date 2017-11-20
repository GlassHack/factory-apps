.class public Lcom/google/android/clockwork/incomingcall/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANSWER_ACTION_MESSAGE_PATH:Ljava/lang/String;

.field public static final END_CALL_ACTION:Ljava/lang/String; = "com.google.android.clockwork.companion.incomingcall.EndCall"

.field public static final END_CALL_COMMAND:Ljava/lang/String; = "end_call"

.field public static final EXTRA_INCOMING_CALL_RPC_NODE:Ljava/lang/String; = "incoming_call_rpc_node"

.field public static final FEATURE_TAG:Ljava/lang/String; = "incomingcall"

.field public static final KEY_CALL_TIME_MS:Ljava/lang/String; = "call_time_ms"

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phoneNumber"

.field public static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field public static final PATH_INCOMING_CALL_DATA_ITEM:Ljava/lang/String;

.field public static final PATH_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final QUICK_REPLY_MESSAGE_PATH:Ljava/lang/String;

.field public static final REJECT_ACTION_MESSAGE_PATH:Ljava/lang/String;

.field public static final SEND_TEXT_COMMAND:Ljava/lang/String; = "send_text"

.field public static final START_CALL_COMMAND:Ljava/lang/String; = "start_call"

.field public static final UPDATE_CALL_INFO_ACTION:Ljava/lang/String; = "com.google.android.clockwork.companion.incomingcall.UpdateCallInfo"

.field public static final UPDATE_CALL_INFO_COMMAND:Ljava/lang/String; = "update_call_info"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "incomingcall"

    const-string v1, "/rpc"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/incomingcall/Constants;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    .line 15
    const-string v0, "incomingcall"

    const-string v1, "/incoming_call"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/incomingcall/Constants;->PATH_INCOMING_CALL_DATA_ITEM:Ljava/lang/String;

    .line 42
    const-string v0, "incomingcall"

    const-string v1, "/incoming_call/answer_call_action"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/incomingcall/Constants;->ANSWER_ACTION_MESSAGE_PATH:Ljava/lang/String;

    .line 45
    const-string v0, "incomingcall"

    const-string v1, "/incoming_call/reject_call_action"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/incomingcall/Constants;->REJECT_ACTION_MESSAGE_PATH:Ljava/lang/String;

    .line 48
    const-string v0, "incomingcall"

    const-string v1, "/incoming_call/quick_reply"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/incomingcall/Constants;->QUICK_REPLY_MESSAGE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
