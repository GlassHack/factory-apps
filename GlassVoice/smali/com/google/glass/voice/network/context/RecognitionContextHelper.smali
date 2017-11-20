.class public Lcom/google/glass/voice/network/context/RecognitionContextHelper;
.super Ljava/lang/Object;
.source "RecognitionContextHelper.java"


# static fields
.field private static final DEFAULT_PHRASES_NAME:Ljava/lang/String; = "glass-third-party"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStringListToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .param p2, "spokenBcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "phrases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "glass-third-party"

    invoke-static {p0, p1, v0, p2}, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->addStringListToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static addStringListToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .param p2, "phrasesName"    # Ljava/lang/String;
    .param p3, "spokenBcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "phrases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 36
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v5, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Adding phrases for %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v1, v5

    .line 43
    .local v1, "offset":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-static {v5, v9}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 46
    new-instance v3, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    invoke-direct {v3}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;-><init>()V

    .line 48
    .local v3, "phrasesContext":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;
    iget-object v5, v3, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;->phrase:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    iput-object v5, v3, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;->phrase:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "phrase":Ljava/lang/String;
    sget-object v5, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Phrase.Phrase = %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v5, v3, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;->phrase:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    new-instance v6, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    invoke-direct {v6}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;-><init>()V

    invoke-virtual {v6, v2}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;->setPhrase(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;

    move-result-object v6

    aput-object v6, v5, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v2    # "phrase":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-direct {v4}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;-><init>()V

    .line 57
    .local v4, "requestContext":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    iput-object v3, v4, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    .line 58
    invoke-virtual {v4, v8}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->setType(I)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 59
    invoke-virtual {v4, p2}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->setName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 60
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    aput-object v4, v5, v1

    .line 61
    invoke-virtual {p0, p3}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0
.end method

.method public static addSupplierToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/glass/voice/network/context/GlassPhrasesSupplier;Ljava/lang/String;)V
    .locals 2
    .param p0, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .param p1, "supplier"    # Lcom/google/glass/voice/network/context/GlassPhrasesSupplier;
    .param p2, "spokenBcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/google/glass/voice/network/context/GlassPhrasesSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/voice/network/context/GlassPhrasesSupplier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/google/glass/voice/network/context/RecognitionContextHelper;->addStringListToRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
