.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WinkCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WinkReceiver"
.end annotation


# static fields
.field private static final EXTRA_EYE_GESTURE_WINK:Ljava/lang/String; = "WINK"


# instance fields
.field private showFinalDialogRunner:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

.field private final winkReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method private constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .line 151
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$100()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .line 121
    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "winkReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->winkReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 127
    new-instance v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->showFinalDialogRunner:Ljava/lang/Runnable;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p2, "x1"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    return-void
.end method

.method private trySaveCalibration()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$800(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->applyAndSaveCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to save wink calibration data."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    sget v2, Lcom/google/glass/gesture/R$string;->wink_calibration_save_failure:I

    invoke-static {v1, v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1600(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V

    goto :goto_0
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->winkReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.glass.action.EYE_GESTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gesture"

    .line 157
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unhandled Intent: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    const-string v1, "gesture"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "gestureName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "WINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$204(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)I

    .line 167
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->abortBroadcast()V

    .line 169
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "%s wink detected!"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v4}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 171
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 172
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$500(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 173
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    sget v2, Lcom/google/glass/gesture/R$drawable;->wink_alpha_animation:I

    invoke-static {v1, v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$600(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V

    .line 175
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$800(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v2

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v2, v3}, Lcom/google/android/glass/eye/EyeGestureManager;->isCalibrationComplete(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$702(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Z)Z

    .line 177
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$700(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "+++++ Wink detection calibrated! +++++"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$900(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 181
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 183
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1100(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 185
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->trySaveCalibration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/gesture/R$string;->wink_calibration_success_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->showFinalDialogRunner:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1300()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    invoke-static {}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1500()Lcom/google/glass/tutorial/TutorialStatusContract;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v2}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/glass/tutorial/TutorialStatusContract;->setCompletionStatusAsync(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    goto/16 :goto_0
.end method
