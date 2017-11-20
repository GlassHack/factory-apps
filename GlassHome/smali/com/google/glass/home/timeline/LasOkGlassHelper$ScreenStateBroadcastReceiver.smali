.class Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "LasOkGlassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/LasOkGlassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateBroadcastReceiver"
.end annotation


# instance fields
.field private final screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V
    .locals 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;Lcom/google/glass/home/timeline/LasOkGlassHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;
    .param p2, "x1"    # Lcom/google/glass/home/timeline/LasOkGlassHelper$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$1000(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v2}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$900(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->unregister(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$1000(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$ScreenStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v2}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$900(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->register(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    goto :goto_0
.end method
