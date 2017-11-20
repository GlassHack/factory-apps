.class public Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;
.super Lcom/google/android/gtalkservice/IChatSession$Stub;
.source "ChatSessionWrapper.java"


# instance fields
.field private mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 0
    .param p1, "chatSession"    # Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    .line 33
    return-void
.end method


# virtual methods
.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gtalkservice/IChatListener;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 73
    return-void
.end method

.method public clearChatHistory(Landroid/net/Uri;)V
    .locals 1
    .param p1, "queryUri"    # Landroid/net/Uri;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->clearChatHistory(Landroid/net/Uri;)V

    .line 102
    return-void
.end method

.method public ensureNonZeroLastMessageDate()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->ensureNonZeroLastMessageDate()V

    .line 98
    return-void
.end method

.method public getLightweightNotify()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getLightweightNotify()Z

    move-result v0

    return v0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 47
    .local v1, "retVal":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "retVal":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 48
    .restart local v1    # "retVal":[Ljava/lang/String;
    return-object v1
.end method

.method public getUnsentComposedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inviteContact(Ljava/lang/String;)V
    .locals 1
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->inviteContact(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isGroupChat()Z

    move-result v0

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->isOffTheRecord()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->leave()V

    .line 57
    return-void
.end method

.method public markAsRead()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->markAsRead()V

    .line 41
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gtalkservice/IChatListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 77
    return-void
.end method

.method public reportEndCause(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "video"    # Z
    .param p3, "endCause"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->reportEndCause(Ljava/lang/String;ZI)V

    .line 89
    return-void
.end method

.method public reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "remoteBareJid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "video"    # Z
    .param p4, "noWifi"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 94
    return-void
.end method

.method public saveUnsentComposedMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "unsentMessage"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->saveUnsentComposedMessage(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public sendChatMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;->mChatSession:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->sendChatMessage(Ljava/lang/String;)V

    .line 61
    return-void
.end method
