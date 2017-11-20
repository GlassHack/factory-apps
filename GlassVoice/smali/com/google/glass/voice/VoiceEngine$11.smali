.class Lcom/google/glass/voice/VoiceEngine$11;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->onScreenOff()V
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
    .line 758
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 764
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "checkScreenState(); screenOn=%s, currentConfig#allowScreenOff=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 765
    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 764
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Screen is off and current config does not allow screen off."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$2000(Lcom/google/glass/voice/VoiceConfig;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$1900(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V

    .line 771
    :cond_0
    return-void
.end method
