.class public final Lcom/google/glass/util/ContextualMenuLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V
    .locals 4

    .prologue
    .line 16
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 20
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    :goto_1
    const-string v2, "cm"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    invoke-static {v2, v1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 27
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    const-string v1, "UNKNOWN"

    goto :goto_1
.end method
