.class public Lcom/google/glass/settings/ui/developer/LayoutOverlayService;
.super Landroid/app/Service;
.source "LayoutOverlayService.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "hide"

.field public static final ACTION_SHOW:Ljava/lang/String; = "show"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final LAYOUT_OVERLAY_SETTINGS_NAME:Ljava/lang/String; = "glass_developer_settings_layout_overlay"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private settingsContract:Lcom/google/glass/util/SettingsContract;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;)Lcom/google/glass/util/SettingsContract;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->settingsContract:Lcom/google/glass/util/SettingsContract;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->changeLayoutOverlay(Ljava/lang/String;)V

    return-void
.end method

.method private changeLayoutOverlay(Ljava/lang/String;)V
    .locals 6
    .param p1, "overlayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 194
    .local v0, "layoutOverlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    if-nez v0, :cond_1

    .line 195
    if-nez p1, :cond_0

    .line 196
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stopping layout overlay service."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 212
    :goto_1
    return-void

    .line 198
    :cond_0
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stopping layout overlay service (received unknown overlay name \'%s\')."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    if-nez v1, :cond_2

    .line 207
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating layout overlay view."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->createOverlayView()V

    .line 210
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting current layout overlay to \'%s\'."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->setLayoutOverlay(Lcom/google/glass/settings/ui/developer/LayoutOverlay;)V

    goto :goto_1
.end method

.method private createOverlayView()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 166
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    .line 169
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 170
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v7, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 179
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 180
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 181
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v7, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 183
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 185
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method private handleHideAction()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->updatePersistentLayoutOverlay(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private handleShowAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->updatePersistentLayoutOverlay(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->queryAndShowOverlay()V

    goto :goto_0
.end method

.method private queryAndShowOverlay()V
    .locals 3

    .prologue
    .line 124
    new-instance v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;)V

    .line 139
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 138
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method private updatePersistentLayoutOverlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "overlayName"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 160
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/google/glass/view/WindowManagerProvider;->getInstance()Lcom/google/glass/view/WindowManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/view/WindowManagerProvider;->get(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->windowManager:Landroid/view/WindowManager;

    .line 70
    invoke-static {}, Lcom/google/glass/util/SettingsContractProvider;->getInstance()Lcom/google/glass/util/SettingsContractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 71
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->layoutOverlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 101
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand() [intent=null]."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const/4 v1, 0x2

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onStartCommand() [action=%s]."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v2, "show"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->handleShowAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v2, "hide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->handleHideAction()V

    goto :goto_0
.end method
