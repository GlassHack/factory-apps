.class final Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;
.super Lcom/google/glass/trap/SuccessivePokeTrap;
.source "SetupActivity.java"

# interfaces
.implements Lcom/google/glass/trap/Trap$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdbEnablerTrap"
.end annotation


# static fields
.field private static final MAX_TAP_INTERVAL_MILLIS:J = 0x1f4L

.field private static final TRIGGER_TAP_COUNT:I = 0xa


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Lcom/google/glass/sound/SoundManager;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    .line 787
    const/16 v0, 0xa

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/trap/SuccessivePokeTrap;-><init>(IJ)V

    .line 788
    invoke-virtual {p0, p0}, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->setListener(Lcom/google/glass/trap/Trap$Listener;)V

    .line 789
    const-string v0, "null contentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->contentResolver:Landroid/content/ContentResolver;

    .line 790
    const-string v0, "null soundManager"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 791
    return-void
.end method


# virtual methods
.method public onCountdown(I)V
    .locals 0
    .param p1, "pokeCount"    # I

    .prologue
    .line 801
    return-void
.end method

.method public onTrapTriggered()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$AdbEnablerTrap;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 797
    return-void
.end method
