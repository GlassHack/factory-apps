.class Lcom/google/glass/voice/VoiceMenuDialog$9$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceMenuDialog$9;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$command:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog$9;Landroid/content/Context;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->this$1:Lcom/google/glass/voice/VoiceMenuDialog$9;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->val$activity:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->val$activity:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/glass/voice/GlassVoiceActivity;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->val$activity:Landroid/content/Context;

    check-cast v0, Lcom/google/glass/voice/GlassVoiceActivity;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$3;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GlassVoiceActivity;->onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 531
    :cond_0
    return-void
.end method
