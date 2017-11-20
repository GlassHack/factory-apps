.class Lcom/google/glass/home/timeline/LasOkGlassHelper$2;
.super Ljava/lang/Object;
.source "LasOkGlassHelper.java"

# interfaces
.implements Lcom/google/android/glass/eye/EyeGestureManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/LasOkGlassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Lcom/google/android/glass/eye/EyeGesture;)V
    .locals 5
    .param p1, "gesture"    # Lcom/google/android/glass/eye/EyeGesture;

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Eye gesture %s received. Screen is on: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v4}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$500(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v1}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$400(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$200(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v1}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$600(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$500(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v1}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$400(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$700()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$2;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$800(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/home/timeline/MainTimelineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 75
    :cond_0
    return-void
.end method
