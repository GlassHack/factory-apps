.class Lcom/google/glass/voice/menu/VoiceMenuItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/CommandValue;->logVoiceMenuCommandEvent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/voice/menu/CommandValue;Z)V

    .line 375
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenuItem;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->onTriggered(Lcom/google/glass/voice/menu/VoiceMenuItem;)Z

    .line 377
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->access$100(Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->access$100(Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 383
    :cond_1
    return-void
.end method
