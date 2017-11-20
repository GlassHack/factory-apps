.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Lcom/google/android/glass/timeline/DirectRenderingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->unregisterListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->registerListeners()V

    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Registering listeners."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$400(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$300(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$500(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V

    .line 100
    return-void
.end method

.method private unregisterListeners()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unregistering listeners."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$400(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->this$0:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-static {v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->access$300(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public renderingPaused(Landroid/view/SurfaceHolder;Z)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "pause"    # Z

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 75
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$2;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$2;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$1;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
