.class public Lcom/google/glass/phone/PhoneApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "PhoneApplication.java"


# static fields
.field private static final TIME_BETWEEN_RINGS_MS:J = 0x7d0L

.field private static ringHandler:Landroid/os/Handler;


# instance fields
.field isRinging:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private lastRingStreamId:I

.field private final onSoundRequestedListener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

.field private final playRing:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/phone/PhoneApplication;->ringHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 29
    new-instance v0, Lcom/google/glass/phone/PhoneApplication$1;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneApplication$1;-><init>(Lcom/google/glass/phone/PhoneApplication;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneApplication;->playRing:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/google/glass/phone/PhoneApplication$2;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneApplication$2;-><init>(Lcom/google/glass/phone/PhoneApplication;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneApplication;->onSoundRequestedListener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneApplication;->isRinging:Z

    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/phone/PhoneApplication;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneApplication;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/google/glass/phone/PhoneApplication;->lastRingStreamId:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneApplication;)Lcom/google/glass/sound/SoundManager$SoundCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneApplication;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/phone/PhoneApplication;->onSoundRequestedListener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/phone/PhoneApplication;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneApplication;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/phone/PhoneApplication;->playRing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/phone/PhoneApplication;->ringHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "applicationContext":Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/phone/PhoneApplication;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lcom/google/glass/phone/PhoneApplication;

    .end local v0    # "applicationContext":Landroid/content/Context;
    return-object v0

    .line 73
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the PhoneApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public startRinging()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneApplication;->stopRinging()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneApplication;->isRinging:Z

    .line 84
    sget-object v0, Lcom/google/glass/phone/PhoneApplication;->ringHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneApplication;->playRing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public stopRinging()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneApplication;->isRinging:Z

    .line 90
    sget-object v0, Lcom/google/glass/phone/PhoneApplication;->ringHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneApplication;->playRing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iget v1, p0, Lcom/google/glass/phone/PhoneApplication;->lastRingStreamId:I

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->stopSound(I)V

    .line 92
    return-void
.end method
