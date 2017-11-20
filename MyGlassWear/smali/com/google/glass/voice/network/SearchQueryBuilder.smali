.class public Lcom/google/glass/voice/network/SearchQueryBuilder;
.super Ljava/lang/Object;
.source "SearchQueryBuilder.java"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "www.google.com"

.field private static final DEFAULT_HOSTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PATH:Ljava/lang/String; = "/search"

.field private static final ENCODING_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_DEVELOPER_KEY:Ljava/lang/String; = "X-Developer-Key"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_OAUTH_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_X_GEO:Ljava/lang/String; = "X-Geo"

.field private static final HOST_DE:Ljava/lang/String; = "www.google.de"

.field private static final HOST_JP:Ljava/lang/String; = "www.google.co.jp"

.field private static final HOST_UK:Ljava/lang/String; = "www.google.co.uk"

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final PARAM_ANDROID_COUNTRY_CODE:Ljava/lang/String; = "gcc"

.field public static final PARAM_CLIENT_DEFAULT_VALUE:Ljava/lang/String; = "glass"

.field public static final PARAM_CLIENT_ID:Ljava/lang/String; = "client"

.field public static final PARAM_COMM_LAYER_TRANSPORT:Ljava/lang/String; = "tch"

.field public static final PARAM_COMM_LAYER_TRANSPORT_DEFAULT_VALUE:Ljava/lang/String; = "6"

.field private static final PARAM_DEBUG_HOST:Ljava/lang/String; = "host"

.field private static final PARAM_GEOLOCATION:Ljava/lang/String; = "gl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PARAM_HTML_LANGUAGE:Ljava/lang/String; = "hl"

.field private static final PARAM_INPUT_LANGUAGE:Ljava/lang/String; = "inlang"

.field public static final PARAM_INPUT_METHOD:Ljava/lang/String; = "inm"

.field public static final PARAM_INPUT_METHOD_DEFAULT_VALUE:Ljava/lang/String; = "vs"

.field public static final PARAM_NO_JESR:Ljava/lang/String; = "noj"

.field public static final PARAM_NO_JESR_DEFAULT_VALUE:Ljava/lang/String; = "1"

.field public static final PARAM_QUERY:Ljava/lang/String; = "q"

.field private static final PARAM_SPOKEN_LANGUAGE:Ljava/lang/String; = "spknlang"

.field public static final PARAM_VERSION:Ljava/lang/String; = "v"

.field public static final SANDBOX_HOST_SUFFIX:Ljava/lang/String; = ".sandbox.google.com"

.field private static final SANDBOX_SERVER_KEY:Ljava/lang/String; = "persist.search.server"

.field static final SEARCH_AGENT:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SEARCH_VERSION_NUMBER:Ljava/lang/Double;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cgiParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    .line 61
    sget-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GlassSearch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_AGENT:Ljava/lang/String;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "www.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "www.google.de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "www.google.co.jp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "www.google.co.uk"

    aput-object v2, v0, v1

    .line 162
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->DEFAULT_HOSTS:Ljava/util/List;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string/jumbo v1, "www.google.com"

    iput-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    .line 134
    const-string v1, "/search"

    iput-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    .line 135
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    .line 145
    invoke-direct {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setStandardParameters()V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setQuery(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getSandboxHost()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "sandboxHost":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHost(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->overrideHostForLocale()V

    goto :goto_0
.end method

.method private getHostForCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 175
    const-string v0, "gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "www.google.co.uk"

    .line 182
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const-string v0, "jp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-string/jumbo v0, "www.google.co.jp"

    goto :goto_0

    .line 179
    :cond_1
    const-string v0, "de"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const-string/jumbo v0, "www.google.de"

    goto :goto_0

    .line 182
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static getSandboxHost()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 321
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    .local v0, "sandboxId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 324
    .end local v0    # "sandboxId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getSandboxId()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0    # "sandboxId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ".sandbox.google.com"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSandboxId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    const-string v0, "persist.search.server"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_AGENT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGwsUrl(Ljava/net/URL;)Z
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-static {p0, v0, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->isGwsUrl(Ljava/net/URL;ZZ)Z

    move-result v0

    return v0
.end method

.method public static isGwsUrl(Ljava/net/URL;ZZ)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "allowDefault"    # Z
    .param p2, "allowSandbox"    # Z

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_1

    sget-object v3, Lcom/google/glass/voice/network/SearchQueryBuilder;->DEFAULT_HOSTS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v2

    .line 349
    :cond_1
    if-eqz p2, :cond_2

    .line 350
    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getSandboxHost()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "sandboxHost":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    .end local v1    # "sandboxHost":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private overrideHostForLocale()V
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "country":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Overriding host for locale %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHostForCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "localeHost":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHost(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method private setInternationalizationParams()V
    .locals 7

    .prologue
    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 234
    .local v3, "deviceLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "country":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 240
    .local v1, "caseLocale":Ljava/util/Locale;
    invoke-static {v3}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "bcpTag":Ljava/lang/String;
    const-string v5, "gcc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "hl"

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v5, "inlang"

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v5, "spknlang"

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHostForCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "localeHost":Ljava/lang/String;
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getSandboxHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 249
    const-string v5, "host"

    invoke-virtual {p0, v5, v4}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method private setStandardParameters()V
    .locals 4

    .prologue
    .line 218
    const-string v1, "inm"

    const-string/jumbo v2, "vs"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "client"

    const-string v2, "glass"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "noj"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setInternationalizationParams()V

    .line 224
    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "version":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public addTransportParams()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "tch"

    const-string v1, "6"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public buildUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCgiParameterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 269
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCgiParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpHeaders(Lcom/google/glass/location/LocationManagerHelper;)Ljava/util/Map;
    .locals 5
    .param p1, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/location/LocationManagerHelper;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 289
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 292
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 293
    invoke-static {v1}, Lcom/google/glass/voice/network/XGeoLocationHelper;->getXGeoLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "xGeoLocation":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    const-string v3, "X-Geo"

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    const-string v3, "Host"

    iget-object v4, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v0

    .line 293
    .end local v2    # "xGeoLocation":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setHost(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 197
    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 307
    const-string v1, "https://"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getCgiParameterString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "string":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "toString; host=%s; %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    return-object v0
.end method
