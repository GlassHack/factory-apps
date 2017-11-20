.class Lcom/google/glass/voice/VoiceService$2;
.super Lcom/google/glass/voice/LocaleChangedReceiver;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceService;
    .param p2, "x0"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$2;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/LocaleChangedReceiver;-><init>(Lcom/google/glass/logging/FormattingLogger;)V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$2;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService;->onLocaleChanged()V

    .line 74
    return-void
.end method
