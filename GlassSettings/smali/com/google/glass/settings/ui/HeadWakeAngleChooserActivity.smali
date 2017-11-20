.class public Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "HeadWakeAngleChooserActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final HEAD_WAKE_TRIGGER_HYSTERESIS_DEGREES:F = 7.0f

.field private static final MAX_PITCH_ANGLE_DEGS:F = 40.0f

.field private static final MIN_PITCH_ANGLE_DEGS:F = 10.0f


# instance fields
.field private angleTextView:Landroid/widget/TextView;

.field private currentPitch:F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private onResumeTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->startSensors()V

    return-void
.end method

.method private getGravitySensor()Landroid/hardware/Sensor;
    .locals 7

    .prologue
    const/16 v5, 0x9

    .line 219
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 225
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "vendor":Ljava/lang/String;
    const-string v4, "Invensense"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MPL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Using sensor: %s [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHeadWakeHysteresisAngleDegs(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/high16 v0, 0x40e00000    # 7.0f

    return v0
.end method

.method private onGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 239
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 240
    .local v1, "x":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 241
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 242
    .local v3, "z":F
    float-to-double v4, v3

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v0, v4

    .line 243
    .local v0, "pitch":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->setPitch(F)V

    .line 244
    return-void
.end method

.method private setPitch(F)V
    .locals 6
    .param p1, "angleDegs"    # F

    .prologue
    .line 248
    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 249
    const/high16 p1, 0x42200000    # 40.0f

    .line 254
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->currentPitch:F

    .line 255
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    invoke-virtual {v2, p1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 258
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int v1, v2

    .line 259
    .local v1, "roundedAngleDegs":I
    sget v2, Lcom/google/glass/settings/ui/R$string;->head_wake_angle_text_format:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 259
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "formattedString":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->angleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void

    .line 250
    .end local v0    # "formattedString":Ljava/lang/String;
    .end local v1    # "roundedAngleDegs":I
    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 251
    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_0
.end method

.method private showConfirmationMessageThenFinish()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->wake_angle_set_confirmation:I

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$3;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$3;-><init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 202
    return-void
.end method

.method private startSensors()V
    .locals 3

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getGravitySensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->gravitySensor:Landroid/hardware/Sensor;

    .line 208
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->gravitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 212
    return-void
.end method

.method private stopSensors()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "type"    # I

    .prologue
    .line 137
    return-void
.end method

.method public onConfirm()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 147
    iget v1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->currentPitch:F

    .line 148
    .local v1, "pitchToSave":F
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 149
    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;-><init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;F)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    iget v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->currentPitch:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "eventData":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Writing new GLU angle to hardware: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->currentPitch:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->currentPitch:F

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {p0, v2, v3}, Lcom/google/glass/settings/HeadGestureUtils;->setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z

    .line 167
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "head_wake_up_enabled"

    invoke-static {v2, v3, v6}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Angle chooser successfully set angle, but feature is off.  Enabling!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {p0, v2, v7}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->setHeadWakeEnabledPersistent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Z)V

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->showConfirmationMessageThenFinish()V

    .line 174
    return v7
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 74
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_angle_chooser_angle_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->angleTextView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_angle_chooser_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    .line 79
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadWakeEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->headView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 83
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismisser"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->finish()V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 115
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeTask:Landroid/os/AsyncTask;

    .line 119
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->stopSensors()V

    .line 120
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 93
    new-instance v1, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;-><init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V

    .line 109
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 108
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeTask:Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown sensor event type: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/google/glass/settings/ui/R$layout;->head_wake_angle_chooser_activity:I

    return v0
.end method
