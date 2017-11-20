.class public Lcom/google/glass/home/timeline/LasOkGlassHelper;
.super Ljava/lang/Object;
.source "LasOkGlassHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final OK_GLASS_LISTEN_DURATION:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/home/timeline/MainTimelineActivity;

.field private final eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

.field private final lasVoiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

.field private final lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

.field private final mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

.field private final powerManager:Landroid/os/PowerManager;

.field private final screenStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final stopListening:Ljava/lang/Runnable;

.field private final stopListeningHandler:Landroid/os/Handler;

.field private final voiceListener:Lcom/google/glass/voice/VoiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->OK_GLASS_LISTEN_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->stopListeningHandler:Landroid/os/Handler;

    .line 44
    new-instance v1, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;Lcom/google/glass/home/timeline/LasOkGlassHelper$1;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->screenStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 53
    new-instance v1, Lcom/google/glass/home/timeline/LasOkGlassHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/LasOkGlassHelper$1;-><init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->stopListening:Ljava/lang/Runnable;

    .line 63
    new-instance v1, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;-><init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    .line 101
    new-instance v1, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;-><init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->voiceListener:Lcom/google/glass/voice/VoiceListener;

    .line 131
    iput-object p1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->activity:Lcom/google/glass/home/timeline/MainTimelineActivity;

    .line 132
    new-instance v1, Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->voiceListener:Lcom/google/glass/voice/VoiceListener;

    invoke-direct {v1, p1, v2}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lasVoiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 133
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "launcher":Lcom/google/glass/voice/menu/GlassMenuLauncher;
    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    iget-object v2, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lasVoiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-direct {v1, p1, v2, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .line 135
    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lasVoiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 136
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->powerManager:Landroid/os/PowerManager;

    .line 137
    invoke-static {p1}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 138
    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->screenStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->powerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lasVoiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->stopListening:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->stopListeningHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->getGuardConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->OK_GLASS_LISTEN_DURATION:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/home/timeline/MainTimelineActivity;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->activity:Lcom/google/glass/home/timeline/MainTimelineActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    return-object v0
.end method

.method private getGuardConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->activity:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setShouldAllowScreenOff(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDestroyInternal()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->screenStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper;->activity:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 148
    return-void
.end method
