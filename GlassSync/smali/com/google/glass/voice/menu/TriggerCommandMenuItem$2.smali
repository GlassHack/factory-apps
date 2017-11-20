.class final Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;
.super Ljava/lang/Object;
.source "TriggerCommandMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->getStartNativeAppRunnable(Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;ZJ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iget-boolean v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    invoke-static {v2, v3}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$100(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v1

    .line 176
    .local v1, "requiresInput":Z
    if-eqz v1, :cond_1

    .line 177
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "NativeAppCommandItem %s requires input."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-static {v2, v3}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$300(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    iget-wide v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$triggerTimeMillis:J

    .line 180
    invoke-static {v2, v3, v4}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "l"

    iget-object v5, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$commandLiteral:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "p"

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 193
    invoke-virtual {v7}, Lcom/google/android/glass/app/VoiceTrigger;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "i"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 191
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 195
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "NativeAppCommandItem %s doesn\'t require input."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    iget-object v3, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$spoken:Z

    iget-wide v5, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$triggerTimeMillis:J

    .line 185
    invoke-static {v4, v5, v6}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;

    move-result-object v4

    .line 184
    invoke-virtual {v2, v3, v4}, Lcom/google/android/glass/app/VoiceTrigger;->activate(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-static {}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unable to activate trigger: %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;->val$trigger:Lcom/google/android/glass/app/VoiceTrigger;

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
