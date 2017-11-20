.class public Lcom/google/glass/voice/menu/CommandValue;
.super Ljava/lang/Object;
.source "CommandValue.java"


# instance fields
.field private final contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

.field private final isTrigger:Z

.field private final literal:Ljava/lang/String;

.field private final triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;


# direct methods
.method private constructor <init>(Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/android/glass/app/ContextualMenus$Command;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "triggerCommand"    # Lcom/google/android/glass/app/VoiceTriggers$Command;
    .param p2, "contextualCommand"    # Lcom/google/android/glass/app/ContextualMenus$Command;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isTrigger"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/voice/menu/CommandValue;->triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 24
    iput-object p2, p0, Lcom/google/glass/voice/menu/CommandValue;->contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 25
    iput-object p3, p0, Lcom/google/glass/voice/menu/CommandValue;->literal:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/google/glass/voice/menu/CommandValue;->isTrigger:Z

    .line 27
    return-void
.end method

.method public static forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;
    .locals 3
    .param p0, "command"    # Lcom/google/android/glass/app/ContextualMenus$Command;

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/google/glass/voice/menu/CommandValue;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p0, v2, v1}, Lcom/google/glass/voice/menu/CommandValue;-><init>(Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/android/glass/app/ContextualMenus$Command;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static forContextual(Ljava/lang/String;)Lcom/google/glass/voice/menu/CommandValue;
    .locals 3
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/google/glass/voice/menu/CommandValue;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lcom/google/glass/voice/menu/CommandValue;-><init>(Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/android/glass/app/ContextualMenus$Command;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;
    .locals 3
    .param p0, "command"    # Lcom/google/android/glass/app/VoiceTriggers$Command;

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/google/glass/voice/menu/CommandValue;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/google/glass/voice/menu/CommandValue;-><init>(Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/android/glass/app/ContextualMenus$Command;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static forTrigger(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/CommandValue;
    .locals 2
    .param p0, "invocationWrapper"    # Lcom/google/glass/voice/InvocationWrapper;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/voice/InvocationWrapper;->getCommandType()I

    move-result v1

    invoke-static {v1}, Lcom/google/glass/voice/VoiceTriggerUtils;->getVoiceTrigger(I)Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/InvocationWrapper;->getTrigger()Lcom/google/android/glass/app/VoiceTrigger;

    move-result-object v0

    .line 54
    .local v0, "trigger":Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Ljava/lang/String;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    goto :goto_0
.end method

.method public static forTrigger(Ljava/lang/String;)Lcom/google/glass/voice/menu/CommandValue;
    .locals 3
    .param p0, "literal"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/glass/voice/menu/CommandValue;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, p0, v1}, Lcom/google/glass/voice/menu/CommandValue;-><init>(Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/android/glass/app/ContextualMenus$Command;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static logVoiceMenuCommandEvent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/voice/menu/CommandValue;Z)V
    .locals 4
    .param p0, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p1, "value"    # Lcom/google/glass/voice/menu/CommandValue;
    .param p2, "spoken"    # Z

    .prologue
    const/4 v3, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-boolean v1, p1, Lcom/google/glass/voice/menu/CommandValue;->isTrigger:Z

    if-eqz v1, :cond_2

    .line 82
    const-string/jumbo v2, "vt"

    iget-object v1, p1, Lcom/google/glass/voice/menu/CommandValue;->triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;

    if-nez v1, :cond_1

    const-string v1, "UNKNOWN"

    .line 85
    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "userEventData":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_4

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "userEventData":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/google/glass/voice/menu/CommandValue;->triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_2
    const-string v2, "cm"

    iget-object v1, p1, Lcom/google/glass/voice/menu/CommandValue;->contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

    if-nez v1, :cond_3

    const-string v1, "UNKNOWN"

    :goto_4
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "userEventData":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "userEventData":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/google/glass/voice/menu/CommandValue;->contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_4

    .line 93
    .restart local v0    # "userEventData":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_3
.end method


# virtual methods
.method public getMainMenuSortingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/voice/menu/CommandValue;->triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/menu/CommandValue;->triggerCommand:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/CommandValue;->contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/menu/CommandValue;->contextualCommand:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/menu/CommandValue;->literal:Ljava/lang/String;

    goto :goto_0
.end method

.method public isTrigger()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/CommandValue;->isTrigger:Z

    return v0
.end method
