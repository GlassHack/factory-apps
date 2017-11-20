.class public Lcom/google/glass/musicplayer/api/ServiceApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ADD_TO_QUEUE:Ljava/lang/String; = "com.google.glass.music.action.ADD_TO_QUEUE"

.field public static final ACTION_CHECK_ACTIVATED:Ljava/lang/String; = "com.google.glass.music.action.CHECK_ACTIVATED"

.field public static final ACTION_START_PLAYBACK:Ljava/lang/String; = "com.google.glass.music.action.PLAY"

.field public static final CONTENT_PROVIDER:Ljava/lang/String; = "com.google.glass.music.CONTENT_PROVIDER"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final EXTRA_IDS:Ljava/lang/String; = "ids"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "returnCode"

.field public static final EXTRA_RESULT_CODE_FAILED_AUTH_FAILED:I = 0x4

.field public static final EXTRA_RESULT_CODE_FAILED_GENERIC:I = 0x2

.field public static final EXTRA_RESULT_CODE_FAILED_NETWORK_TIMEOUT:I = 0x3

.field public static final EXTRA_RESULT_CODE_SUCCESS:I = 0x1

.field public static final EXTRA_RESULT_CODE_UNINITIALIZED:I = -0x1

.field public static final EXTRA_RESULT_ERROR_MSG:Ljava/lang/String; = "errorMessage"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final MUSIC_PREFIX:Ljava/lang/String; = "com.google.glass.music"

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.google.glass.music.action.PLAYER_SERVICE"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "com.google.glass.music.category.SERVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
