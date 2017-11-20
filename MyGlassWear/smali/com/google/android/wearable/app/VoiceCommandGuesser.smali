.class public Lcom/google/android/wearable/app/VoiceCommandGuesser;
.super Ljava/lang/Object;
.source "VoiceCommandGuesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;
    }
.end annotation


# static fields
.field static final actionToCommandMap:Lcom/google/common/collect/BiMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;",
            "Lcom/google/android/glass/app/ContextualMenus$Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 28
    .local v0, "builder":Lcom/google/common/collect/ImmutableBiMap$Builder;, "Lcom/google/common/collect/ImmutableBiMap$Builder<Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;Lcom/google/android/glass/app/ContextualMenus$Command;>;"
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "archive"

    const-string v3, "com.google.android.gm"

    invoke-direct {v1, v2, v3}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->ARCHIVE_MESSAGE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 29
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "comment"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->ADD_A_COMMENT:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 30
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "delete"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->DELETE_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 31
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "directions"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 32
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "dismiss"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->DISMISS_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 33
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "favorite"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->FAVORITE_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 34
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "post"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->POST_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 35
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "reply"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 36
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "reply all"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY_TO_ALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 37
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "retry"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->RETRY:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 38
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "save"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->SAVE_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 39
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "send"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 40
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "stop"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->STOP_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 41
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "this post"

    const-string v3, "com.google.android.apps.plus"

    invoke-direct {v1, v2, v3}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->PLUS_ONE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 42
    new-instance v1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    const-string v2, "undo"

    invoke-direct {v1, v2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/glass/app/ContextualMenus$Command;->UNDO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 43
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/wearable/app/VoiceCommandGuesser;->actionToCommandMap:Lcom/google/common/collect/BiMap;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 86
    return-void
.end method


# virtual methods
.method public getVoiceCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/VoiceCommandGuesser;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "normalizedAction":Ljava/lang/String;
    sget-object v3, Lcom/google/android/wearable/app/VoiceCommandGuesser;->actionToCommandMap:Lcom/google/common/collect/BiMap;

    new-instance v4, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    invoke-direct {v4, v0, p2}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 107
    .local v1, "voiceCommand":Lcom/google/android/glass/app/ContextualMenus$Command;
    if-nez v1, :cond_2

    .line 108
    sget-object v3, Lcom/google/android/wearable/app/VoiceCommandGuesser;->actionToCommandMap:Lcom/google/common/collect/BiMap;

    new-instance v4, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    invoke-direct {v4, v0}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "voiceCommand":Lcom/google/android/glass/app/ContextualMenus$Command;
    check-cast v1, Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 112
    .restart local v1    # "voiceCommand":Lcom/google/android/glass/app/ContextualMenus$Command;
    :cond_2
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->WEAR_VOICE_COMMAND_MISSING:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "action"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "package"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    .line 119
    invoke-static {v5, p1, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
