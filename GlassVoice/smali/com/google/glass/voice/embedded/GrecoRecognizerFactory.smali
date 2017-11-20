.class public Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "GrecoRecognizerFactory.java"


# static fields
.field private static final instance:Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    new-instance v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;-><init>()V

    sput-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->instance:Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    return-void
.end method

.method private static areAllCustomPhrasesEmptyOrNull(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 6
    .param p0, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 53
    .local v0, "phrase":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    .end local v0    # "phrase":Ljava/lang/String;
    :goto_1
    return v1

    .line 52
    .restart local v0    # "phrase":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "phrase":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/google/glass/voice/RecognizerFactory;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->instance:Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;

    return-object v0
.end method

.method public static isGuardConfig(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-static {p2}, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->areAllCustomPhrasesEmptyOrNull(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p2, v0}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    sget-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "All customPhrases were empty or null; or the VoiceConfig is OFF"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 39
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to compute a HotwordRecognizer for a non-hotword config, inconceivable."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1, p2}, Lcom/google/glass/voice/embedded/GrecoRecognizerFactory;->isGuardConfig(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$Sensitivity;)V

    goto :goto_0

    .line 39
    :cond_3
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;

    invoke-direct {v0, p1, p2}, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method
