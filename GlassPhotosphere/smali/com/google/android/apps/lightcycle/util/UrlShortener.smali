.class public Lcom/google/android/apps/lightcycle/util/UrlShortener;
.super Ljava/lang/Object;
.source "UrlShortener.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final URL_SHORTENER_API_KEY:Ljava/lang/String; = "AIzaSyAeGRfhdlINliJODCqF7rs-CUyofCVfkk0"

.field private static final URL_SHORTENER_API_URL:Ljava/lang/String; = "https://www.googleapis.com/urlshortener/v1/url?key="


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/lightcycle/util/UrlShortener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/UrlShortener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/UrlShortener;->createShortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createShortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "longUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-static {}, Lcom/google/android/apps/lightcycle/util/UrlShortener;->getApiBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 83
    .local v0, "connection":Ljava/net/URLConnection;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 88
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v0, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v3, "out":Ljava/io/DataOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\"longUrl\": \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 94
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 97
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v4, "response":Ljava/lang/StringBuffer;
    move-object v6, p0

    .line 102
    .local v6, "shortUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "temp":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "response":Ljava/lang/StringBuffer;
    .end local v6    # "shortUrl":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    sget-object v9, Lcom/google/android/apps/lightcycle/util/UrlShortener;->TAG:Ljava/lang/String;

    const-string v10, "Could not get shortened URL"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    :goto_2
    return-object v9

    .line 105
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "response":Ljava/lang/StringBuffer;
    .restart local v6    # "shortUrl":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 106
    sget-object v9, Lcom/google/android/apps/lightcycle/util/UrlShortener;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response from url shortener service is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, "responseInJson":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_2

    .line 114
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "response":Ljava/lang/StringBuffer;
    .end local v5    # "responseInJson":Lorg/json/JSONObject;
    .end local v6    # "shortUrl":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/google/android/apps/lightcycle/util/UrlShortener;->TAG:Ljava/lang/String;

    const-string v10, "Could not parse goo.gl response"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static createShortUrlAsync(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 3
    .param p0, "longUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lightcycle/util/UrlShortener$1;-><init>(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 67
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method public static getApiBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyAeGRfhdlINliJODCqF7rs-CUyofCVfkk0"

    return-object v0
.end method
