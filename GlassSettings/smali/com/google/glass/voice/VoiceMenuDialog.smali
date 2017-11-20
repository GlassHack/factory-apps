.class public Lcom/google/glass/voice/VoiceMenuDialog;
.super Landroid/app/Dialog;
.source "VoiceMenuDialog.java"

# interfaces
.implements Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;
.implements Lcom/google/glass/voice/menu/IVoiceMenuDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;,
        Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;,
        Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;,
        Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;,
        Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    }
.end annotation


# static fields
.field private static final KEY_VOICE_MENU_TIPS_VIEW_COUNT:Ljava/lang/String; = "voice_menu_tips_view_count"

.field private static final NOT_ON_HOTWORD_MENU:J = -0x1L

.field private static final SHOW_DELAY_MILLIS:J = 0xbb8L

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final actionContainer:Landroid/widget/FrameLayout;

.field private final activity:Landroid/content/Context;

.field private backPressCount:I

.field private final cardScrollAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

.field private final cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private clock:Lcom/google/glass/time/Clock;

.field private final connectivityReceiver:Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;

.field private dismissedByUser:Z

.field private fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

.field private final gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private hasFocus:Z

.field private final headDetector:Lcom/google/glass/input/HeadScrollDetector;

.field private hotwordMenuStartTime:J

.field private overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final selectedItems:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/voice/VoiceMenuDialog$MenuState;",
            ">;"
        }
    .end annotation
.end field

.field private singleOptionPrimaryMenu:Z

.field private final tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field protected final voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

.field private final voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    sget-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 64
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primaryVoiceConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v2, -0x1

    .line 341
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->dismissedByUser:Z

    .line 216
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    .line 217
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMenuDialog$1;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 262
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceMenuDialog$4;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 303
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    .line 329
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hotwordMenuStartTime:J

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->backPressCount:I

    .line 343
    sget v0, Lcom/google/glass/common/R$layout;->voice_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->setContentView(I)V

    .line 344
    new-instance v0, Lcom/google/glass/input/HeadScrollDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/HeadScrollDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->headDetector:Lcom/google/glass/input/HeadScrollDetector;

    .line 345
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    .line 346
    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 347
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 348
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->clock:Lcom/google/glass/time/Clock;

    .line 349
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$5;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceMenuDialog$5;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->actionContainer:Landroid/widget/FrameLayout;

    .line 356
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->actionContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LAS_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->createVoiceInputHelper(Landroid/content/Context;)Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->createVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    .line 366
    new-instance v0, Lcom/google/glass/voice/TipsViewAnimator;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    sget v3, Lcom/google/glass/common/R$id;->swipe_forward_tip:I

    .line 367
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TipsView;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    sget v4, Lcom/google/glass/common/R$id;->swipe_forward_tip_gradient:I

    .line 368
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "voice_menu_tips_view_count"

    const-wide/16 v5, 0xbb8

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/TipsViewAnimator;-><init>(Landroid/content/Context;Lcom/google/glass/widget/TipsView;Landroid/view/View;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    .line 371
    sget v0, Lcom/google/glass/common/R$id;->menu_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 373
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 374
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$6;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMenuDialog$6;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 393
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$7;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMenuDialog$7;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 404
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$8;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceMenuDialog$8;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->initializeFastScrollOverlay()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/widget/CardScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceMenuDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->dismissedByUser:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceMenuDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->backPressCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceMenuDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hasFocus:Z

    return v0
.end method

.method static synthetic access$1500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceMenuDialog;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;
    .param p1, "x1"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/VoiceMenuDialog;->triggerVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceMenuDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->actionContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceMenuDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;
    .param p1, "x1"    # Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/TipsViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/ActionController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/widget/FastScrollOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/touchpad/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    return-object v0
.end method

.method private clearOverflowMenu()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightTip()V

    .line 786
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->close()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    .line 789
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 791
    :cond_0
    return-void
.end method

.method private final createVoiceInputHelper(Landroid/content/Context;)Lcom/google/glass/voice/VoiceInputHelper;
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 419
    new-instance v0, Lcom/google/glass/voice/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$9;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceMenuDialog$9;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;)V

    return-object v0
.end method

.method private getCurrentActionController()Lcom/google/glass/voice/ActionController;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    goto :goto_0
.end method

.method private getDisplayHeight()I
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private initializeFastScrollOverlay()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 230
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$2;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/VoiceMenuDialog$2;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    .line 242
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    .line 243
    invoke-virtual {v0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMenuDialog$3;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->addTransformListener(Lcom/google/android/glass/widget/CardScrollView$TransformListener;)V

    goto :goto_0
.end method

.method private logHotwordMenuAndRestartTimer(ZZ)V
    .locals 9
    .param p1, "hotwordRecognized"    # Z
    .param p2, "startingHotwordMenu"    # Z

    .prologue
    .line 568
    iget-wide v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hotwordMenuStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hotwordMenuStartTime:J

    sub-long v0, v2, v4

    .line 570
    .local v0, "timeOnMenu":J
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_HOTWORD_MENU_TRANSITION:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "r"

    .line 572
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "t"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 573
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 571
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 576
    .end local v0    # "timeOnMenu":J
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/glass/voice/VoiceMenuDialog;->restartHotwordTimer(Z)V

    .line 577
    return-void
.end method

.method private resetOverflowMenu()V
    .locals 4

    .prologue
    .line 773
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    .line 775
    .local v1, "latestItem":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    iget-object v2, v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOverflowMenuCallback()Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    .line 776
    .local v0, "callback":Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    if-eqz v0, :cond_0

    .line 777
    iget-object v2, v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    iget-object v3, v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getSubMenu()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->isEmptyVoiceMenu:Z

    .line 778
    iget-object v2, v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    invoke-interface {v0, v2}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->onAttachedToMenu(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;)V

    .line 781
    .end local v0    # "callback":Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    .end local v1    # "latestItem":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    :cond_0
    return-void
.end method

.method private restartHotwordTimer(Z)V
    .locals 2
    .param p1, "startingHotwordMenu"    # Z

    .prologue
    .line 580
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hotwordMenuStartTime:J

    .line 581
    return-void

    .line 580
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private stepBackInVoiceMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 736
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    .line 737
    .local v0, "lastMenuState":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    iget-object v1, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->dismissedByUser:Z

    invoke-interface {v1, v2}, Lcom/google/glass/voice/ActionController;->dismiss(Z)V

    .line 742
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getDisplayHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 743
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 746
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->actionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getDisplayHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/VoiceMenuDialog$12;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceMenuDialog$12;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    .line 747
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    if-eqz v1, :cond_1

    .line 758
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 759
    invoke-direct {p0, v3, v3}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    .line 770
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateBack()V

    .line 765
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 766
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 767
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->clearOverflowMenu()V

    .line 768
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->resetOverflowMenu()V

    .line 769
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    goto :goto_0
.end method

.method private triggerVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "itemSelectedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 586
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/CommandValue;->logVoiceMenuCommandEvent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/voice/menu/CommandValue;Z)V

    .line 587
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->onTriggered(Lcom/google/glass/voice/menu/VoiceMenuItem;)Z

    .line 588
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    .line 589
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSoundsForVoice()V

    .line 590
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method


# virtual methods
.method areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->headDetector:Lcom/google/glass/input/HeadScrollDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/HeadScrollDetector;->areOrientationSensorsStarted()Z

    move-result v0

    return v0
.end method

.method public createVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 595
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dismiss(Z)V
    .locals 2
    .param p1, "dismissedByUser"    # Z

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->dismissedByUser:Z

    .line 677
    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->dismiss()V

    .line 689
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceMenuDialog$11;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMenuDialog$11;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getVoiceMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    iget v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->backPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->backPressCount:I

    .line 718
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/google/glass/voice/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Action controller consumed back event."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 727
    invoke-direct {p0, v2, v2}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    goto :goto_0

    .line 732
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->stepBackInVoiceMenu()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 630
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 631
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 632
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 633
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper;->registerGrammarLoaders()V

    .line 634
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 635
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->dismissedByUser:Z

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController;->dismiss(Z)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 644
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onDismissed()V

    .line 645
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper;->unregisterGrammarLoaders()V

    .line 646
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 647
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 648
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->headDetector:Lcom/google/glass/input/HeadScrollDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/HeadScrollDetector;->stopOrientationSensors()V

    .line 649
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->clearOverflowMenu()V

    .line 650
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 651
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .param p1, "deltaPixels"    # F

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->onVerticalHeadScroll(F)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->hasFocus:Z

    .line 696
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->LAS_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 701
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->getCurrentActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/glass/voice/ActionController;->onWindowFocusChanged(Z)V

    .line 712
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 713
    return-void

    .line 702
    :cond_2
    if-eqz p1, :cond_1

    .line 703
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 704
    .local v0, "currentMenuState":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->restartHotwordTimer(Z)V

    .line 705
    if-eqz v0, :cond_4

    .line 706
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 703
    .end local v0    # "currentMenuState":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->selectedItems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    move-object v0, v1

    goto :goto_1

    .line 708
    .restart local v0    # "currentMenuState":Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
    :cond_4
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method setClockForTesting(Lcom/google/glass/time/Clock;)Lcom/google/glass/voice/VoiceMenuDialog;
    .locals 0
    .param p1, "clock"    # Lcom/google/glass/time/Clock;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->clock:Lcom/google/glass/time/Clock;

    .line 337
    return-object p0
.end method

.method public setPrimaryItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v0, 0x1

    .line 600
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuItems(Ljava/util/List;)V

    .line 601
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    .line 602
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->showPrimaryMenu()V

    .line 618
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog;->headDetector:Lcom/google/glass/input/HeadScrollDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/HeadScrollDetector;->startOrientationSensors()V

    .line 619
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->logHotwordMenuAndRestartTimer(ZZ)V

    .line 620
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 621
    return-void
.end method

.method public show(J)V
    .locals 6
    .param p1, "commandCreationUpTimeMillis"    # J

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMenuDialog;->show()V

    .line 607
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 608
    const-string v1, "l"

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->clock:Lcom/google/glass/time/Clock;

    .line 609
    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "m"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    .line 608
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MENU_OPENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 613
    .end local v0    # "eventTuple":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected startAction(Lcom/google/glass/voice/VoiceMenuDialog$MenuState;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .param p1, "menuState"    # Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 546
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog$10;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceMenuDialog$10;-><init>(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$MenuState;)V

    .line 557
    .local v0, "startActionRunnable":Ljava/lang/Runnable;
    iget-object v1, p1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/voice/VoiceMenuDialog;->triggerVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 558
    iget-object v1, p1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMenuDialog;->activity:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMenuDialog;->actionContainer:Landroid/widget/FrameLayout;

    iget-object v4, p1, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->actionCallback:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/ActionController;->prepareAction(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    return-object v1
.end method
