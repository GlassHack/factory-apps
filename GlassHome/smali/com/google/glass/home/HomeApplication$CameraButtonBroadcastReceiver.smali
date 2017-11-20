.class Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraButtonBroadcastReceiver"
.end annotation


# instance fields
.field private final cameraButtonReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 3

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 621
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 618
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;->cameraButtonReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 622
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "x1"    # Lcom/google/glass/home/HomeApplication$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$CameraButtonBroadcastReceiver;->cameraButtonReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 629
    :cond_0
    return-void
.end method
