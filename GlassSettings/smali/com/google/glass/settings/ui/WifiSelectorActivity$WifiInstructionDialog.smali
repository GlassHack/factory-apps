.class Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;
.super Landroid/app/Dialog;
.source "WifiSelectorActivity.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiInstructionDialog"
.end annotation


# instance fields
.field private dismissSound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 823
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 824
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 825
    new-instance v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, p1}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 826
    sget v0, Lcom/google/glass/settings/ui/R$layout;->wifi_instruction_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->setContentView(I)V

    .line 827
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->dismissSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 828
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/settings/ui/WifiSelectorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/WifiSelectorActivity$1;

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->dismissSound:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 833
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 834
    return-void
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 839
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->dismissSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 840
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->dismiss()V

    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$WifiInstructionDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipesX"    # I
    .param p7, "numSwipesY"    # I

    .prologue
    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 856
    const/4 v0, 0x0

    return v0
.end method
