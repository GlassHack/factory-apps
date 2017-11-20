.class public Lcom/google/glass/voice/network/translate/NetworkTts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CACHE_FILE_TYPE:Lcom/google/glass/util/FileType;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

.field private static final NO_UTTERANCE_ID:Ljava/lang/String; = ""

.field private static final REQUEST_DEFAULT_QUERY_PARAMETERS:Ljava/lang/String; = "ie=utf-8&client=glass"

.field public static final REQUEST_HOST:Ljava/lang/String; = "translate.google.com"

.field public static final REQUEST_PATH:Ljava/lang/String; = "/translate_tts"

.field private static final REQUEST_SCHEME:Ljava/lang/String; = "http"

.field private static final TARGET_LANG:Ljava/lang/String; = "tl"

.field private static final TARGET_TEXT:Ljava/lang/String; = "text"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static networkTtsSupportedLanguages:Ljava/util/Set;


# instance fields
.field private player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 61
    sget-object v0, Lcom/google/glass/util/FileType;->AUDIO:Lcom/google/glass/util/FileType;

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/FileType;

    .line 71
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/google/android/b/a;

    invoke-direct {v0}, Lcom/google/android/b/a;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/Set;

    .line 123
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/translate/NetworkTts;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/voice/network/translate/NetworkTts;->releasePlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/google/common/hash/Hashing;->b()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/common/hash/k;->hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHeaders()Ljava/util/Map;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 351
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 352
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-object v0
.end method

.method static getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Network TTS not supported for \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 323
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 324
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "translate.google.com"

    .line 325
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/translate_tts"

    .line 326
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ie=utf-8&client=glass"

    .line 327
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "text"

    .line 328
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tl"

    .line 329
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 330
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlayingLoader(Landroid/speech/tts/UtteranceProgressListener;)Lcom/google/glass/util/CachedFilesManager$Loader;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/network/translate/NetworkTts$1;-><init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V

    return-object v0
.end method

.method public static isLanguageSupported(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 337
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/LocaleFormat;->localeForString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized releasePlayer()V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 236
    invoke-static {p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)Z

    move-result v0

    .line 237
    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-static {p1}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromServer(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)Z

    move-result v0

    .line 243
    :cond_0
    if-nez v0, :cond_1

    .line 247
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not obtain TTS from either local cache or network"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized isTtsPlaying()Z
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 2

    .prologue
    .line 223
    invoke-static {p2, p3}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, ""

    invoke-virtual {p4, v1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-direct {p0, p1, v0, p4}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 229
    return-void
.end method

.method public stopSpeaking()V
    .locals 4

    .prologue
    .line 372
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/network/translate/NetworkTts;->releasePlayer()V

    .line 383
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Media player cannot handle stop call."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-direct {p0}, Lcom/google/glass/voice/network/translate/NetworkTts;->releasePlayer()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/voice/network/translate/NetworkTts;->releasePlayer()V

    throw v0
.end method

.method streamFromCache(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)Z
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    .line 261
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v3, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Streaming from cache file: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-direct {p0, p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->getPlayingLoader(Landroid/speech/tts/UtteranceProgressListener;)Lcom/google/glass/util/CachedFilesManager$Loader;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 267
    :cond_0
    return v0
.end method

.method streamFromServer(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)Z
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 280
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Streaming from the TTS server: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v1

    .line 284
    :try_start_0
    invoke-virtual {v1}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    iget-object v2, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v2, :cond_1

    .line 295
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No results returned from TTS server"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Network request failed due to IOException [exceptionMessage=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 289
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_1
    iget v2, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_2

    .line 297
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "TTS not found"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_2
    iget v2, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 299
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "TTS Server error code: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v1, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 301
    invoke-static {p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Write %s bytes of audio data to file %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 304
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/FileType;

    iget-object v1, v1, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 308
    invoke-virtual {p0, v2, p3}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)Z

    move-result v0

    goto :goto_0
.end method
