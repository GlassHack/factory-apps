.class Lcom/google/glass/voice/VoiceEngine$2$1;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine$2;->onHotword(Lcom/google/glass/voice/HotwordResult;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceEngine$2;

.field final synthetic val$currentConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine$2;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceEngine$2;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->this$1:Lcom/google/glass/voice/VoiceEngine$2;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->val$currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->val$currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->this$1:Lcom/google/glass/voice/VoiceEngine$2;

    iget-object v1, v1, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->this$1:Lcom/google/glass/voice/VoiceEngine$2;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2$1;->val$currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$900(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceConfig;)V

    .line 185
    :cond_0
    return-void
.end method
