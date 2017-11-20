.class public Lcom/google/glass/widget/MessageDialog;
.super Landroid/app/Dialog;
.source "MessageDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;,
        Lcom/google/glass/widget/MessageDialog$Builder;,
        Lcom/google/glass/widget/MessageDialog$Params;,
        Lcom/google/glass/widget/MessageDialog$SimpleListener;,
        Lcom/google/glass/widget/MessageDialog$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TEMPORARY_MESSAGE_DURATION:J = 0x7d0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EXPANDED_MESSAGE_DURATION:J = 0x7d0L

.field private static final MESSAGE_DURATION:J = 0x3e8L

.field private static final MESSAGE_DURATION_UNSET:J = -0x1L

.field private static final MSG_DISMISS:I = 0x0

.field private static final MSG_ON_DONE:I = 0x2

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentMessage:Ljava/lang/CharSequence;

.field private final dialogLayout:Landroid/view/ViewGroup;

.field private gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

.field private final gradientView:Landroid/widget/LinearLayout;

.field private final handler:Landroid/os/Handler;

.field private indeterminate:Lcom/google/android/glass/widget/Slider$Indeterminate;

.field private final params:Lcom/google/glass/widget/MessageDialog$Params;

.field private final screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

.field private temporaryContentShowing:Z

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOffReceiver"

    .line 52
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/google/glass/widget/MessageDialog$Params;

    .prologue
    .line 243
    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$400(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->getThemeId(Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 190
    new-instance v0, Lcom/google/glass/widget/MessageDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$1;-><init>(Lcom/google/glass/widget/MessageDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/widget/MessageDialog;Lcom/google/glass/widget/MessageDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    .line 244
    iput-object p2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 245
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 246
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 247
    sget v0, Lcom/google/glass/common/R$layout;->message_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->setContentView(I)V

    .line 248
    sget v0, Lcom/google/glass/common/R$id;->ms_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    .line 249
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$500(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 250
    sget v0, Lcom/google/glass/common/R$id;->gradient_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/glass/widget/MessageDialog$Params;
    .param p3, "x2"    # Lcom/google/glass/widget/MessageDialog$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/MessageDialog;-><init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->onGracePeriodEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/widget/MessageDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    return v0
.end method

.method static synthetic access$2600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cancelTransitions()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hideSliders()V

    .line 442
    return-void
.end method

.method private checkIsShowing()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method not available when the dialog is not showing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    return-void
.end method

.method private static getThemeId(Z)I
    .locals 1
    .param p0, "shouldAnimate"    # Z

    .prologue
    .line 528
    if-eqz p0, :cond_0

    .line 529
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    .line 528
    :goto_0
    return v0

    .line 530
    :cond_0
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme_NoAnimation:I

    goto :goto_0
.end method

.method private hideSliders()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->indeterminate:Lcom/google/android/glass/widget/Slider$Indeterminate;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->indeterminate:Lcom/google/android/glass/widget/Slider$Indeterminate;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 430
    iput-object v1, p0, Lcom/google/glass/widget/MessageDialog;->indeterminate:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$GracePeriod;->cancel()V

    .line 435
    iput-object v1, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    .line 437
    :cond_1
    return-void
.end method

.method private static isActivity(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    move-object v0, p0

    .line 319
    .local v0, "leaf":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    .line 326
    :goto_1
    return v1

    .line 323
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 324
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "leaf":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "leaf":Landroid/content/Context;
    goto :goto_0

    .line 326
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onGracePeriodEnd()V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    .line 403
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/MessageDialog$Listener;->onDoneMessageShown()V

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    .line 407
    return-void
.end method

.method private setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "secondaryMessage"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog;->currentMessage:Ljava/lang/CharSequence;

    .line 538
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    .line 539
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 541
    .local v0, "card":Lcom/google/android/glass/widget/CardBuilder;
    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 545
    :cond_0
    if-eqz p2, :cond_1

    .line 549
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$700(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 550
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    .line 551
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->overlay_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 550
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :goto_1
    invoke-virtual {v0, p2}, Lcom/google/android/glass/widget/CardBuilder;->setFootnote(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 558
    :cond_1
    if-eqz p3, :cond_2

    .line 559
    invoke-virtual {v0, p3}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/glass/widget/CardBuilder;

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 563
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x280

    const/16 v5, 0x168

    invoke-direct {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    return-void

    .line 539
    .end local v0    # "card":Lcom/google/android/glass/widget/CardBuilder;
    :cond_3
    sget-object v1, Lcom/google/android/glass/widget/CardBuilder$Layout;->MENU:Lcom/google/android/glass/widget/CardBuilder$Layout;

    goto :goto_0

    .line 553
    .restart local v0    # "card":Lcom/google/android/glass/widget/CardBuilder;
    :cond_4
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->gradientView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static setSystemDialogIfNeeded(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->isActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 314
    :cond_0
    return-void
.end method

.method private showNormalContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    iput-boolean v3, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 411
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1500(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1400(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 415
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

    .line 416
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1900(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/Slider;->startIndeterminate()Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->indeterminate:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$2000(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 423
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Params;->getMessageTimeoutDuration()J

    move-result-wide v2

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    :cond_1
    return-void

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hideSliders()V

    goto :goto_0
.end method

.method private showTemporaryContent()V
    .locals 4

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 385
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1000(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1100(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 387
    invoke-static {}, Lcom/google/glass/android/glass/widget/SliderProvider;->getInstance()Lcom/google/glass/android/glass/widget/SliderProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/glass/widget/SliderProvider;->get(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 388
    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1200(Lcom/google/glass/widget/MessageDialog$Params;)J

    move-result-wide v2

    long-to-int v1, v2

    new-instance v2, Lcom/google/glass/widget/MessageDialog$2;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/MessageDialog$2;-><init>(Lcom/google/glass/widget/MessageDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/widget/Slider;->startGracePeriod(ILcom/google/android/glass/widget/Slider$GracePeriod$Listener;)Lcom/google/android/glass/widget/Slider$GracePeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    .line 399
    return-void
.end method


# virtual methods
.method public autoHide()V
    .locals 4

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 360
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 361
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Params;->getMessageTimeoutDuration()J

    move-result-wide v2

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 362
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 475
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 477
    return-void
.end method

.method public clearAutoHide()V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 370
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 489
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 491
    return-void
.end method

.method public done()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/MessageDialog;->temporaryContentShowing:Z

    .line 482
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 483
    return-void
.end method

.method public getMessageForTest()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 455
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 456
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->currentMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondaryMessageForTest()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 468
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$1700(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryMessageForTest()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 462
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2100(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$900(Lcom/google/glass/widget/MessageDialog$Params;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    sget-object v2, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Temporary message has completed, onDone will be called to listener, do not send onConfirm."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 510
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/widget/MessageDialog$Listener;->onConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    if-eqz v0, :cond_3

    .line 520
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->hideSliders()V

    .line 521
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->onGracePeriodEnd()V

    :cond_3
    move v0, v1

    .line 524
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-static {p0}, Lcom/google/glass/widget/MessageDialog;->setSystemDialogIfNeeded(Landroid/app/Dialog;)V

    .line 296
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 300
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 301
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/glass/android/media/AudioManager;->playSoundEffect(I)V

    .line 304
    :cond_0
    return v2
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->cancelTransitions()V

    .line 283
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 284
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

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
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method onScreenOff()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/google/glass/widget/MessageDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling for screen off event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 451
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 257
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$600(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 259
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->dialogLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/google/glass/common/R$id;->background_image:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    .local v0, "backgroundImageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$700(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$700(Lcom/google/glass/widget/MessageDialog$Params;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Params;->hasTemporaryContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$800(Lcom/google/glass/widget/MessageDialog$Params;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showTemporaryContent()V

    .line 270
    :goto_1
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 271
    return-void

    .line 261
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->showNormalContent()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->screenOffReceiver:Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;

    .line 276
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 277
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 278
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$100(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Listener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDismissable(Z)V
    .locals 0
    .param p1, "dismissable"    # Z

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/MessageDialog;->setCancelable(Z)V

    .line 376
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/widget/MessageDialog$Listener;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$102(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 381
    return-void
.end method

.method public updateContent(II)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "iconId"    # I

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

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(Ljava/lang/CharSequence;I)V

    .line 335
    return-void
.end method

.method public updateContent(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 346
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 347
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "iconId"    # I

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog;->checkIsShowing()V

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/widget/MessageDialog;->setContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 353
    return-void
.end method
