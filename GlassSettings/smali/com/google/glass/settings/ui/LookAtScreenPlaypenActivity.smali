.class public Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "LookAtScreenPlaypenActivity.java"


# static fields
.field private static final DIM_ANIMATION_DURATION_MS:J = 0xfaL

.field private static final DIM_SCREEN_ALPHA:F


# instance fields
.field private eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

.field private lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

.field private mNumberOfDetections:I

.field private playpenView:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

.field private wasWinkEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->playpenView:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->mNumberOfDetections:I

    return v0
.end method

.method static synthetic access$104(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->mNumberOfDetections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->mNumberOfDetections:I

    return v0
.end method

.method private createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)V

    return-object v0
.end method

.method private showConfirmationMessageThenFinish()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_playpen_completed:I

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 85
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->showConfirmationMessageThenFinish()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 42
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LASER_RLU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->assertIsEnabled(Lcom/google/glass/util/Labs$Feature;)V

    .line 44
    sget v0, Lcom/google/glass/settings/ui/R$id;->look_at_screen_playpen_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->playpenView:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    .line 45
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 46
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    .line 47
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismisser"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 74
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->unregister(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    .line 79
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->wasWinkEnabled:Z

    .line 61
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->register(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    .line 67
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/google/glass/settings/ui/R$layout;->look_at_screen_playpen_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
