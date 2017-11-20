.class Lcom/google/glass/voice/VoiceEngine$5;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->detachVoiceInputCallback()V
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
    .line 353
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$5;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$5;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceInputCallback()V

    .line 357
    return-void
.end method
