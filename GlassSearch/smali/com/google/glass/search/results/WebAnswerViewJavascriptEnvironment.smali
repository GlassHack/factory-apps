.class public Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
.super Ljava/lang/Object;
.source "WebAnswerViewJavascriptEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$2;,
        Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;,
        Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;,
        Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    }
.end annotation


# static fields
.field private static final CARD_INDEX_KEY:Ljava/lang/String; = "CARD_INDEX_KEY"

.field private static final DEFAULT_JS_REQUEST_TIMEOUT_IN_MS:I = 0x7d0

.field private static final GET_AUTH_TOKEN_TIMEOUT_MS:J = 0x3e8L

.field private static final MSG_INITIALIZATION_COMPLETED:I = 0x0

.field private static final MSG_OPTIONS_REQUEST_COMPLETED:I = 0x1

.field private static final MSG_OPTIONS_REQUEST_TIMED_OUT:I = 0x2

.field private static final MSG_OPTION_SELECTION_COMPLETED:I = 0x3

.field private static final MSG_OPTION_SELECTION_TIMED_OUT:I = 0x4

.field private static final REVISION_KEY:Ljava/lang/String; = "REVISION_KEY"

.field private static final SPECS_KEY:Ljava/lang/String; = "SPECS_KEY"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

.field private cardIndex:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private defaultMenuBehaviors:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

.field private displayContext:Ljava/lang/String;

.field private final endOfSpeechTime:J

.field private final handler:Landroid/os/Handler;

.field private initializationStartTime:J

.field private final jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

.field private promptResult:Landroid/webkit/JsPromptResult;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

.field private final webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/search/results/WebAnswerView;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/userevent/UserEventHelper;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p3, "cardIndex"    # Ljava/lang/String;
    .param p4, "displayContext"    # Ljava/lang/String;
    .param p5, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p6, "eosTime"    # J

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "?"

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->cardIndex:Ljava/lang/String;

    .line 73
    const-string v0, "?"

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->displayContext:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->initializationStartTime:J

    .line 122
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    .line 278
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->context:Landroid/content/Context;

    .line 279
    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    .line 280
    iput-object p3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->cardIndex:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->displayContext:Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    invoke-direct {v0, p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    .line 283
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-direct {v0, p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;-><init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .line 284
    new-instance v0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .line 285
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;-><init>(Lcom/google/glass/auth/AuthUtils;)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .line 286
    iput-object p5, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 287
    iput-wide p6, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->endOfSpeechTime:J

    .line 288
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->initializationStartTime:J

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->endOfSpeechTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->initializationStartTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->selectDefaultActionIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->defaultMenuBehaviors:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->cardIndex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->displayContext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;Landroid/webkit/JsPromptResult;)Landroid/webkit/JsPromptResult;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
    .param p1, "x1"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    return-object p1
.end method

.method static synthetic access$2200(Ljava/net/HttpURLConnection;)I
    .locals 1
    .param p0, "x0"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isResponseCodeSuccess(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    return-object v0
.end method

.method private getPostedActionSpec(I)Lorg/json/JSONObject;
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 480
    const/4 v2, 0x0

    .line 482
    .local v2, "specString":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    :goto_0
    if-nez v2, :cond_0

    .line 502
    :goto_1
    return-object v3

    .line 483
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    sget-object v4, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "(%s) Couldn\'t get action spec %s: \"%s\""

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    invoke-static {v8}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v8}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 486
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 488
    :catch_1
    move-exception v1

    .line 490
    .local v1, "e2":Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "(%s) Requested a menu action with invalid index %s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    .line 491
    invoke-static {v7}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    .line 490
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e2":Lorg/json/JSONException;
    :cond_0
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    goto :goto_1

    .line 499
    :catch_2
    move-exception v0

    .line 500
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "(%s) Couldn\'t parse menu action %s: \"%s\""

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    .line 501
    invoke-static {v7}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    .line 500
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 2
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 982
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 985
    :goto_0
    return v1

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOriginSame(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 3
    .param p0, "url1"    # Ljava/net/URL;
    .param p1, "url2"    # Ljava/net/URL;

    .prologue
    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v0

    .line 1030
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isResponseCodeSuccess(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 972
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 995
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 998
    .local v4, "writer":Ljava/io/StringWriter;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1005
    .local v2, "input":Ljava/io/InputStreamReader;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    .local v0, "buffer":[C
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1009
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1011
    .end local v3    # "read":I
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Exception reading content from input stream"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 1018
    .end local v0    # "buffer":[C
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/InputStreamReader;
    :goto_1
    return-object v5

    .line 999
    :catch_1
    move-exception v1

    .line 1001
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to read stream due to unsupported character encoding"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1016
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "read":I
    :cond_0
    sget-object v5, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 1018
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1016
    .end local v0    # "buffer":[C
    .end local v3    # "read":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v5
.end method

.method private removeOldMessages()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    return-void
.end method

.method private requestContextMenu(ILcom/google/glass/search/results/WebAnswerCard$MenuCallback;)V
    .locals 6
    .param p1, "cardIndex"    # I
    .param p2, "menuCallback"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .prologue
    const/4 v4, 0x2

    .line 346
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$704(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v1

    .line 348
    .local v1, "targetRevision":I
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v2, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1202(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;)Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.glassBridge_client.requestOptions("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "commandBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    return-void
.end method

.method private selectDefaultActionIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 368
    const/4 v0, -0x1

    .line 369
    .local v0, "defaultIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 370
    invoke-direct {p0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getPostedActionSpec(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 371
    .local v2, "spec":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 372
    sget-object v3, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x34

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ignoring invalid menu option in position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const-string v3, "default"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    if-ltz v0, :cond_3

    .line 377
    sget-object v3, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Client JS requested more than one default menu action; showing menu."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    const/4 v0, -0x1

    .line 383
    .end local v0    # "defaultIndex":I
    .end local v2    # "spec":Lorg/json/JSONObject;
    :cond_2
    return v0

    .line 380
    .restart local v0    # "defaultIndex":I
    .restart local v2    # "spec":Lorg/json/JSONObject;
    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method buildUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 878
    const/4 v3, 0x0

    .line 880
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    const-string v4, "Host"

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v4, "User-Agent"

    .line 888
    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-static {p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->isGwsUrl(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 891
    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getSearchAuthToken(J)Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "loginOauth":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 893
    sget-object v4, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to get OAuth credentials for ajax call to GWS. Trying anyways..."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "loginOauth":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v4, v3

    .line 899
    :goto_1
    return-object v4

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception opening connection for ajax GET"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    const/4 v4, 0x0

    goto :goto_1

    .line 895
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "loginOauth":Ljava/lang/String;
    :cond_1
    const-string v5, "Authorization"

    const-string v6, "Bearer "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method constructUrlRelativeToBase(Ljava/lang/String;)Ljava/net/URL;
    .locals 10
    .param p1, "relativeUrlStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 848
    const/4 v3, 0x0

    .line 849
    .local v3, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 851
    .local v0, "baseUrl":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v6, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v6}, Lcom/google/glass/search/results/WebAnswerView;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    .end local v0    # "baseUrl":Ljava/net/URL;
    .local v1, "baseUrl":Ljava/net/URL;
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 863
    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    invoke-static {v4, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isOriginSame(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 866
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Security exception: requested HTTP GET from a mismatched origin"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .end local v1    # "baseUrl":Ljava/net/URL;
    .restart local v0    # "baseUrl":Ljava/net/URL;
    move-object v3, v4

    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    move-object v4, v5

    .line 869
    :goto_0
    return-object v4

    .line 852
    :catch_0
    move-exception v2

    .line 853
    .local v2, "e":Ljava/net/MalformedURLException;
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Malformed base URL"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 854
    goto :goto_0

    .line 859
    .end local v0    # "baseUrl":Ljava/net/URL;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "baseUrl":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 860
    .restart local v2    # "e":Ljava/net/MalformedURLException;
    sget-object v6, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Malformed URL requested"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .end local v1    # "baseUrl":Ljava/net/URL;
    .restart local v0    # "baseUrl":Ljava/net/URL;
    move-object v4, v5

    .line 861
    goto :goto_0

    .end local v0    # "baseUrl":Ljava/net/URL;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v1    # "baseUrl":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    move-object v0, v1

    .end local v1    # "baseUrl":Ljava/net/URL;
    .restart local v0    # "baseUrl":Ljava/net/URL;
    move-object v3, v4

    .line 869
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 317
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disabling Glass/JS bridge"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->DISABLED:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-static {v0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$402(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 319
    invoke-direct {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->removeOldMessages()V

    .line 320
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JAVASCRIPT_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 321
    return-void
.end method

.method public getInitializationState()Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v0

    return-object v0
.end method

.method public getJavascriptBridge()Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    return-object v0
.end method

.method public getOptions(ZLjava/util/List;I)I
    .locals 9
    .param p1, "voiceMenu"    # Z
    .param p3, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/4 v0, -0x1

    const/4 v8, 0x0

    .line 393
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 394
    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Requested cached menu options, but none were available"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v1, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 398
    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    .line 399
    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x4e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Not returning options for card #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when we have them for #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    .line 398
    invoke-interface {v1, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v4, "tempBundle":Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "nextId":I
    :goto_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 405
    invoke-direct {p0, v5}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getPostedActionSpec(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 406
    .local v2, "spec":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 409
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid spec for option #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", skipping..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->context:Landroid/content/Context;

    move v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 420
    .end local v2    # "spec":Lorg/json/JSONObject;
    :cond_3
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webChromeClient:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    return-object v0
.end method

.method public invokeMenuOption(III)V
    .locals 6
    .param p1, "unusedCardIndex"    # I
    .param p2, "index"    # I
    .param p3, "optionsBasedOnRevision"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 449
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring menu selection since an action is already pending in JS."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1702(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 457
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 458
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring selection from r%s option menu since we\'re at r%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 459
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 458
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 463
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring selection from r%s option menu since we\'re at r%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 464
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-static {v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 463
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->jsBridge:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    invoke-direct {p0, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getPostedActionSpec(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1702(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x43

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "window.glassBridge_client.onOptionSelected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->handler:Landroid/os/Handler;

    .line 476
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 475
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getInitializationState()Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyInvisible()V
    .locals 1

    .prologue
    .line 337
    const-string v0, "window.glassBridge_client.notifyInvisible()"

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public notifyVisible()V
    .locals 1

    .prologue
    .line 333
    const-string v0, "window.glassBridge_client.notifyVisible()"

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onPromptResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "unusedCardIndex"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    if-eqz v0, :cond_0

    .line 642
    if-eqz p2, :cond_1

    .line 643
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 648
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    .line 649
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->promptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_0
.end method

.method readHttpResponseAsJsonArray(Ljava/net/HttpURLConnection;Ljava/net/URL;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "originalUrl"    # Ljava/net/URL;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, "badCall":Lorg/json/JSONArray;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v5, "[0,\"\"]"

    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "badCall":Lorg/json/JSONArray;
    .local v1, "badCall":Lorg/json/JSONArray;
    move-object v0, v1

    .line 918
    .end local v1    # "badCall":Lorg/json/JSONArray;
    .restart local v0    # "badCall":Lorg/json/JSONArray;
    :goto_0
    invoke-static {p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 919
    .local v2, "responseCode":I
    if-nez v2, :cond_1

    .line 931
    .end local v0    # "badCall":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v0

    .line 923
    .restart local v0    # "badCall":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->readHttpResponseAsString(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "responseText":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 928
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 929
    .local v4, "result":Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 930
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v0, v4

    .line 931
    goto :goto_1

    .line 914
    .end local v2    # "responseCode":I
    .end local v3    # "responseText":Ljava/lang/String;
    .end local v4    # "result":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method readHttpResponseAsString(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/lang/String;
    .locals 9
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "originalUrl"    # Ljava/net/URL;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 941
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v5

    invoke-static {v5}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isResponseCodeSuccess(I)Z

    move-result v2

    .line 948
    .local v2, "successResponse":Z
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 952
    .local v3, "successStream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isOriginSame(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 953
    sget-object v5, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Security exception: HTTP GET redirected to a different origin than the client"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v2    # "successResponse":Z
    .end local v3    # "successStream":Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 958
    .restart local v2    # "successResponse":Z
    .restart local v3    # "successStream":Ljava/io/InputStream;
    :cond_0
    if-eqz v2, :cond_1

    move-object v1, v3

    .line 959
    .local v1, "stream":Ljava/io/InputStream;
    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 964
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 958
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 960
    .end local v2    # "successResponse":Z
    .end local v3    # "successStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error reading response from HTTP GET request"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4
.end method

.method public requestMenu(ILcom/google/glass/search/results/WebAnswerCard$MenuCallback;)V
    .locals 0
    .param p1, "cardIndex"    # I
    .param p2, "menuCallback"    # Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    .prologue
    .line 655
    invoke-direct {p0, p1, p2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->requestContextMenu(ILcom/google/glass/search/results/WebAnswerCard$MenuCallback;)V

    .line 656
    return-void
.end method

.method protected runJavascript(Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 507
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 508
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v0, v0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->webAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget-object v0, v0, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "javascript:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 511
    :cond_0
    return-void
.end method

.method public sendBlurEvent(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "window.glassBridge_client.onCardBlur("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendFocusEvent(I)V
    .locals 2
    .param p1, "cardIndex"    # I

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "window.glassBridge_client.onCardFocus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultMenuBehaviors(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)V
    .locals 0
    .param p1, "defaults"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->defaultMenuBehaviors:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .line 309
    return-void
.end method
