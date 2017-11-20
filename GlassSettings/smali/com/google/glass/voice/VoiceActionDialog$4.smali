.class Lcom/google/glass/voice/VoiceActionDialog$4;
.super Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.source "VoiceActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceActionDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$300(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->isShowing()Z

    move-result v0

    return v0
.end method
