.class Lcom/google/glass/voice/VoiceEngine$3;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
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
    .line 193
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResampledAudioData([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$1000(Lcom/google/glass/voice/VoiceEngine;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-array v0, p3, [B

    .line 203
    .local v0, "copy":[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$3;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$1100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v1

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lcom/google/glass/voice/VoiceServiceListener;->onResampledAudioData([BII)V

    goto :goto_0
.end method
