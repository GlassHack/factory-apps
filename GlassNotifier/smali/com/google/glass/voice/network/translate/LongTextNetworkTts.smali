.class public Lcom/google/glass/voice/network/translate/LongTextNetworkTts;
.super Ljava/lang/Object;
.source "LongTextNetworkTts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;
    }
.end annotation


# static fields
.field public static final NO_UTTERANCE_ID:Ljava/lang/String; = ""

.field private static sNetworkTtsLocaleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

.field private mIsPlaying:Z

.field private mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "el"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mIsPlaying:Z

    .line 31
    new-instance v0, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/translate/LongTextNetworkTts;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mIsPlaying:Z

    return p1
.end method

.method public static isLanguageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "langShortName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 88
    sget-object v2, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/LocaleFormat;->localeForString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 94
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->sNetworkTtsLocaleSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isTtsPlaying()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mIsPlaying:Z

    return v0
.end method

.method public speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->stop()V

    .line 37
    new-instance v0, Lcom/google/glass/voice/network/translate/LongTextSplitter;

    invoke-direct {v0}, Lcom/google/glass/voice/network/translate/LongTextSplitter;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/glass/voice/network/translate/LongTextSplitter;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 38
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;

    invoke-direct {v5, p0, p4}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;-><init>(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 57
    .local v5, "wrapperListener":Landroid/speech/tts/UtteranceProgressListener;
    new-instance v0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;

    iget-object v4, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;-><init>(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Ljava/util/List;Ljava/lang/String;Lcom/google/glass/voice/network/translate/CachedAudioDownloader;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->executeParallel()V

    .line 73
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->cancel(Z)Z

    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mLastTask:Lcom/google/glass/voice/network/translate/TtsPrepareTask;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->releaseAllMedia()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
