.class public Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;
.super Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.source "ExpandShortenedUrlTask.java"


# static fields
.field private static final LONG_URL_JSON_KEY:Ljava/lang/String; = "longUrl"

.field private static final SHORTENER_API_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/apps/lightcycle/util/UrlShortener;->getApiBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&shortUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->SHORTENER_API_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 50
    return-void
.end method

.method public static expandAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortenedUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->SHORTENER_API_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "requestUrl":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;

    invoke-direct {v2, p0, p2}, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 44
    .local v2, "task":Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method


# virtual methods
.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseContentString"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const-string v3, "longUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
