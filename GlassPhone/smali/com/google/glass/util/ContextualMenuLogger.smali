.class public final Lcom/google/glass/util/ContextualMenuLogger;
.super Ljava/lang/Object;
.source "ContextualMenuLogger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p0, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p1, "contextualCommandEnumString"    # Ljava/lang/CharSequence;
    .param p2, "spoken"    # Z

    .prologue
    .line 16
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 20
    .local v0, "action":Lcom/google/glass/userevent/UserEventAction;
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/glass/app/ContextualMenus$Command;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v1

    .line 21
    .local v1, "command":Lcom/google/android/glass/app/ContextualMenus$Command;
    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 25
    .end local v1    # "command":Lcom/google/android/glass/app/ContextualMenus$Command;
    .local v2, "commandName":Ljava/lang/String;
    :goto_1
    const-string v4, "cm"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    invoke-static {v4, v2, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {p0, v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 27
    return-void

    .line 16
    .end local v0    # "action":Lcom/google/glass/userevent/UserEventAction;
    .end local v2    # "commandName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_0

    .line 22
    .restart local v0    # "action":Lcom/google/glass/userevent/UserEventAction;
    :catch_0
    move-exception v3

    .line 23
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "UNKNOWN"

    .restart local v2    # "commandName":Ljava/lang/String;
    goto :goto_1
.end method
