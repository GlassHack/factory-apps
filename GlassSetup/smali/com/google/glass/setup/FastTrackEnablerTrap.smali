.class Lcom/google/glass/setup/FastTrackEnablerTrap;
.super Lcom/google/glass/trap/SuccessivePokeTrap;
.source "FastTrackEnablerTrap.java"

# interfaces
.implements Lcom/google/glass/trap/Trap$Listener;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_FROM:I = 0x4

.field static final FAST_TRACK_CONFIRM_AUTO_DISMISS_SECONDS:J = 0x1eL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_TAP_INTERVAL_MILLIS:I = 0x1f4

.field private static final TRIGGER_TAP_COUNT:I = 0x7


# instance fields
.field private final callback:Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final setupFlowController:Lcom/google/glass/setup/SetupFlowController;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/sound/SoundManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;
    .param p2, "setupFlowController"    # Lcom/google/glass/setup/SetupFlowController;
    .param p3, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 54
    const/4 v0, 0x7

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/trap/SuccessivePokeTrap;-><init>(IJ)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->setListener(Lcom/google/glass/trap/Trap$Listener;)V

    .line 56
    iput-object p1, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->callback:Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

    .line 57
    iput-object p2, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    .line 58
    iput-object p4, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    const-string v0, "null soundManager"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/SetupFlowController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/FastTrackEnablerTrap;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/FastTrackEnablerTrap;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->callback:Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

    return-object v0
.end method

.method private addDismissTimer(JLcom/google/glass/setup/SetupFlowController$State;)V
    .locals 3
    .param p1, "delaySeconds"    # J
    .param p3, "currentState"    # Lcom/google/glass/setup/SetupFlowController$State;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    invoke-direct {v1, p0, p3}, Lcom/google/glass/setup/FastTrackEnablerTrap$1;-><init>(Lcom/google/glass/setup/FastTrackEnablerTrap;Lcom/google/glass/setup/SetupFlowController$State;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 113
    return-void
.end method


# virtual methods
.method public onCountdown(I)V
    .locals 2
    .param p1, "pokeCount"    # I

    .prologue
    .line 82
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onTrapTriggered()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x1e

    .line 65
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 69
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-direct {p0, v3, v4, v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->addDismissTimer(JLcom/google/glass/setup/SetupFlowController$State;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 73
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 75
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-direct {p0, v3, v4, v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->addDismissTimer(JLcom/google/glass/setup/SetupFlowController$State;)V

    goto :goto_0
.end method
