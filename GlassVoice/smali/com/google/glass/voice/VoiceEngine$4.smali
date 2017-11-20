.class Lcom/google/glass/voice/VoiceEngine$4;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$4;->val$voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$4;->val$voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/VoiceInputCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    .line 347
    return-void
.end method
