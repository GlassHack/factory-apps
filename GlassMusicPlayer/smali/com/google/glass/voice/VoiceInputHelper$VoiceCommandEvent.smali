.class public Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final handled:Ljava/util/concurrent/CountDownLatch;

.field private final resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

.field private final voiceCommand:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->handled:Ljava/util/concurrent/CountDownLatch;

    .line 97
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->handled:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method


# virtual methods
.method public getVoiceCommand()Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->handled:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 103
    return-void
.end method
