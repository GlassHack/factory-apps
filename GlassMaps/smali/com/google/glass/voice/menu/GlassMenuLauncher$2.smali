.class Lcom/google/glass/voice/menu/GlassMenuLauncher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Z)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iput-boolean p2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->val$spoken:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .line 266
    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getCommandType()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->val$spoken:Z

    .line 266
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newDisambiguationItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .line 268
    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getTrigger()Lcom/google/android/glass/app/VoiceTrigger;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->val$spoken:Z

    .line 268
    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newDisambiguationItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    check-cast p1, Lcom/google/glass/voice/InvocationWrapper;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;->apply(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method
