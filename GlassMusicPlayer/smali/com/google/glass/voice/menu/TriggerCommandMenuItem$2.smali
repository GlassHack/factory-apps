.class final Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$commandLiteral:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$spoken:Z

.field final synthetic val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

.field final synthetic val$triggerTimeMillis:J


# direct methods
.method constructor <init>(Lcom/google/android/glass/app/VoiceTrigger;ZLcom/google/glass/voice/menu/VoiceMenuItem;JLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iput-boolean p2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    iput-object p3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-wide p4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$triggerTimeMillis:J

    iput-object p6, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$commandLiteral:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    iget-object v0, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iget-boolean v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$100(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "NativeAppCommandItem %s requires input."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-static {v1, v2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$300(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;

    move-result-object v1

    .line 179
    iget-boolean v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    iget-wide v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$triggerTimeMillis:J

    .line 180
    invoke-static {v2, v3, v4}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "l"

    iget-object v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$commandLiteral:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "p"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 193
    invoke-virtual {v6}, Lcom/google/android/glass/app/VoiceTrigger;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "i"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    .line 191
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 195
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "NativeAppCommandItem %s doesn\'t require input."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    iget-wide v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$triggerTimeMillis:J

    .line 185
    invoke-static {v3, v4, v5}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/google/android/glass/app/VoiceTrigger;->activate(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unable to activate trigger: %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
