.class public abstract Lcom/google/glass/voice/RecognizerFactory;
.super Ljava/lang/Object;
.source "RecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/RecognizerFactory$1;,
        Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;
    }
.end annotation


# static fields
.field public static final NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 61
    new-instance v0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;-><init>(Lcom/google/glass/voice/RecognizerFactory$1;)V

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public abstract createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
.end method
