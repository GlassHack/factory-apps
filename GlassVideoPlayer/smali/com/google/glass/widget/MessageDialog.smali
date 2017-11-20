.class public Lcom/google/glass/widget/MessageDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# static fields
.field private static final DEFAULT_TEMPORARY_MESSAGE_DURATION:J = 0x7d0L

.field private static final EXPANDED_MESSAGE_DURATION:J = 0x7d0L

.field private static final MESSAGE_DURATION:J = 0x3e8L

.field private static final MESSAGE_DURATION_UNSET:J = -0x1L

.field private static final MSG_DISMISS:I = 0x0

.field private static final MSG_ON_DONE:I = 0x2

.field private static final MSG_TEMPORARY_MESSAGE_DONE:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentMessage:Ljava/lang/CharSequence;

.field private final dialogLayout:Landroid/view/ViewGroup;

.field private final gradientView:Landroid/widget/LinearLayout;

.field private final handler:Landroid/os/Handler;

.field private final params:Lcom/google/glass/widget/MessageDialog$Params;

.field private final screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

.field private temporaryContentShowing:Z

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOffReceiver"

    .line 46
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->getThemeId(Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 186
    new-instance v0, Lcom/google/glass/widget/MessageDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$1;-><init>(Lcom/google/glass/widget/MessageDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/widget/MessageDialog;Lcom/google/glass/widget/MessageDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    .line 243
    iput-object p2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 244
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 245
    sget v0, Lcom/google/glass/common/R$layout;->message_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->setContentView(I)V

    .line 246
    sget v0, Lcom/google/glass/common/R$id;->ms_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    .line 247
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$600(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 248
    sget v0, Lcom/google/glass/common/R$id;->gradient_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/MessageDialog;-><init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/MessageDialog;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    return v0
.end method

.method private cancelTransitions()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    return-void
.end method

.method private checkIsShowing()V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method not available when the dialog is not showing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method private getSlider()Lcom/google/glass/widget/SliderView;
    .locals 1

    .prologue
    .line 535
    sget v0, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method private static getThemeId(Z)I
    .locals 1

    .prologue
    .line 496
    if-eqz p0, :cond_0

    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme_NoAnimation:I

    goto :goto_0
.end method

.method private hasSlider()Z
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isService(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .line 307
    :goto_0
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 314
    :goto_1
    return v0

    .line 311
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 312
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog;->currentMessage:Ljava/lang/CharSequence;

    .line 506
    new-instance v1, Lcom/google/android/glass/widget/CardBuilder;

    .line 507
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {v1, p1}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 513
    :cond_0
    if-eqz p2, :cond_1

    .line 517
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    .line 519
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->overlay_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 518
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 523
    :goto_1
    invoke-virtual {v1, p2}, Lcom/google/android/glass/widget/CardBuilder;->setFootnote(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 526
    :cond_1
    if-eqz p3, :cond_2

    .line 527
    invoke-virtual {v1, p3}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/glass/widget/CardBuilder;

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 531
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x280

    const/16 v4, 0x168

    invoke-direct {v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void

    .line 507
    :cond_3
    sget-object v0, Lcom/google/android/glass/widget/CardBuilder$Layout;->MENU:Lcom/google/android/glass/widget/CardBuilder$Layout;

    goto :goto_0

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static setSystemDialogIfNeeded(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->isService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 302
    :cond_0
    return-void
.end method

.method private showNormalContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iput-boolean v3, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 388
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1500(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1600(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1700(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1800(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hasSlider()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1900(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 396
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 401
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$2000(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 403
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Params;->getMessageTimeoutDuration()J

    move-result-wide v2

    .line 402
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    :cond_2
    return-void

    .line 398
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTemporaryContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 372
    iput-boolean v3, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 373
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1100(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1200(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hasSlider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 377
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->getSlider()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1300(Lcom/google/glass/widget/MessageDialog$Params;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/SliderView;->startProgress(J)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    .line 382
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1300(Lcom/google/glass/widget/MessageDialog$Params;)J

    move-result-wide v2

    .line 381
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    :cond_1
    return-void
.end method


# virtual methods
.method public autoHide()V
    .locals 4

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 348
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 349
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Params;->getMessageTimeoutDuration()J

    move-result-wide v2

    .line 348
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 350
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 443
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 445
    return-void
.end method

.method public clearAutoHide()V
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 358
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 457
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 459
    return-void
.end method

.method public done()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 450
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 451
    return-void
.end method

.method public getMessageForTest()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 424
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->currentMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondaryMessageForTest()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 436
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1700(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryMessageForTest()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 430
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 468
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2100(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 470
    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    sget-object v2, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Temporary message has completed, onDone will be called to listener, do not send onConfirm."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 479
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/widget/MessageDialog$Listener;->onConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    move v0, v1

    .line 492
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 292
    invoke-static {p0}, Lcom/google/glass/widget/MessageDialog;->setSystemDialogIfNeeded(Landroid/app/Dialog;)V

    .line 293
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 280
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 281
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method onScreenOff()V
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling for screen off event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 419
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 255
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$700(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/common/R$id;->background_image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Params;->hasTemporaryContent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showTemporaryContent()V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 269
    return-void

    .line 259
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 274
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 275
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Listener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDismissable(Z)V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 364
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$202(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 369
    return-void
.end method

.method public updateContent(II)V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 322
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(Ljava/lang/CharSequence;I)V

    .line 323
    return-void
.end method

.method public updateContent(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 334
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method
