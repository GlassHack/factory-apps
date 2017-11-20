.class Lcom/google/glass/home/timeline/LasOkGlassHelper$3;
.super Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.source "LasOkGlassHelper.java"


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
    .line 101
    iput-object p1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$800(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/home/timeline/MainTimelineActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Opening voice menu from screen off."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$500(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v1}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$400(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$800(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/home/timeline/MainTimelineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$3;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$800(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/home/timeline/MainTimelineActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->openInvocationMenu(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unknown voice command: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "expected"    # Z

    .prologue
    .line 122
    return-void
.end method
