.class Lcom/google/glass/voice/VoiceEngine$10;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->setConfig(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$recognizerIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$10;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$10;->val$recognizerIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$10;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$10;->val$recognizerIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$1900(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Intent;)V

    .line 663
    return-void
.end method
