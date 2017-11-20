.class Lcom/google/glass/voice/VoiceEngine$12;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->onScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NO_AFFORD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    .line 780
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$2000(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$1900(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V

    .line 784
    :cond_0
    return-void
.end method
