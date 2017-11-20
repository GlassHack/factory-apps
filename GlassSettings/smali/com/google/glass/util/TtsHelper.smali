.class public Lcom/google/glass/util/TtsHelper;
.super Ljava/lang/Object;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;
    }
.end annotation


# static fields
.field private static final LIKELY_ENGLISH_REGEXP:Ljava/lang/String; = "[\\p{block=BASIC_LATIN}\\p{block=GENERAL_PUNCTUATION}]+"

.field private static final NO_UTTERANCE_ID:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final TTS_MODE_KEY:Ljava/lang/String; = "com.google.android.tts:Mode"

.field private static final TTS_MODE_VALUE_NETWORK_FIRST:Ljava/lang/String; = "NetworkFirst"

.field private static final TTS_NETWORK_FIRST_TIMEOUT_VALUE_MS:Ljava/lang/String; = "1500"

.field private static final TTS_NETWORK_TIMEOUT_KEY:Ljava/lang/String; = "com.google.android.tts:NetworkTimeout"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

.field private lastTextSynthesized:Ljava/lang/String;

.field private final networkTts:Lcom/google/glass/voice/network/translate/NetworkTts;

.field private onInitRunnable:Ljava/lang/Runnable;

.field private final textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private textToSpeechInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-direct {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->networkTts:Lcom/google/glass/voice/network/translate/NetworkTts;

    .line 55
    new-instance v0, Lcom/google/glass/util/TtsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$1;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 89
    new-instance v0, Lcom/google/glass/util/TtsHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$2;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 118
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;

    .line 119
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioManager:Landroid/media/AudioManager;

    .line 122
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing TextToSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/glass/util/TtsHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$3;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 138
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper;->audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/util/TtsHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/util/TtsHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/util/TtsHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/voice/network/translate/NetworkTts;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->networkTts:Lcom/google/glass/voice/network/translate/NetworkTts;

    return-object v0
.end method

.method private static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    .line 163
    .local v0, "uiLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/util/TtsHelper;->isLikelyEnglish(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 167
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method private isGoogleTtsSynthesisAvailable(Ljava/util/Locale;)Z
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    iget-boolean v3, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 221
    .local v0, "availability":I
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method static isLikelyEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const-string v0, "[\\p{block=BASIC_LATIN}\\p{block=GENERAL_PUNCTUATION}]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private isTranslateServerTtsAvailable(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static logText(Ljava/lang/String;)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Text: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private speakWithGoogleTts(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "GoogleTTS not yet initialized, queuing up text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p2}, Lcom/google/glass/util/TtsHelper;->logText(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/google/glass/util/TtsHelper$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/glass/util/TtsHelper$4;-><init>(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 240
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TTS is ready, speaking text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {p2}, Lcom/google/glass/util/TtsHelper;->logText(Ljava/lang/String;)V

    .line 242
    iput-object p3, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 243
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 244
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, p1}, Lcom/google/glass/util/TtsHelper;->getParamsForLocale(Ljava/util/Locale;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p2, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method

.method private speakWithTranslateServerTts(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 274
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using translate server to synthesize text. [locale=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {p2}, Lcom/google/glass/util/TtsHelper;->logText(Ljava/lang/String;)V

    .line 276
    iput-object p3, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 277
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 278
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/TtsHelper$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/glass/util/TtsHelper$5;-><init>(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method private stopGoogleTts()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TTS not yet initialized, not calling stop"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping speaking"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0
.end method

.method private stopTranslateServerTts()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->networkTts:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->isTtsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 318
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/TtsHelper$6;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$6;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastTextSynthesized()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    return-object v0
.end method

.method getParamsForLocale(Ljava/util/Locale;)Ljava/util/HashMap;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v1, "ttsParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "embeddedTts"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 261
    .local v0, "isEmbeddedAvailable":Z
    if-eqz v0, :cond_0

    .line 262
    const-string v2, "com.google.android.tts:Mode"

    const-string v3, "NetworkFirst"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "com.google.android.tts:NetworkTimeout"

    const-string v3, "1500"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    return-object v1
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->networkTts:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->isTtsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;

    invoke-direct {v0}, Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 144
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/glass/util/TtsHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 152
    return-void
.end method

.method public speakText(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 205
    iput-object p2, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1}, Lcom/google/glass/util/TtsHelper;->isGoogleTtsSynthesisAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/TtsHelper;->speakWithGoogleTts(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/util/TtsHelper;->isTranslateServerTtsAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/TtsHelper;->speakWithTranslateServerTts(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Speech synthesis unavailable in locale. [locale=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public speakTextLookupLocale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/glass/util/LocaleFormat;->localeForString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 198
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    new-instance v1, Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;

    invoke-direct {v1}, Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;-><init>()V

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 200
    return-void
.end method

.method public stopSpeaking()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/google/glass/util/TtsHelper;->stopGoogleTts()V

    .line 299
    invoke-direct {p0}, Lcom/google/glass/util/TtsHelper;->stopTranslateServerTts()V

    .line 300
    return-void
.end method
