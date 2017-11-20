.class Lcom/google/glass/voice/VoiceMessageController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$6;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/InputMode;Lcom/google/glass/voice/InputMode;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    invoke-static {p1}, Lcom/google/glass/voice/VoiceMessageController;->access$1600(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v2

    iget-object v2, v2, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 626
    invoke-static {p2}, Lcom/google/glass/voice/VoiceMessageController;->access$1600(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v3

    iget-object v3, v3, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 628
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    :goto_1
    invoke-static {v2, v0}, Lcom/google/common/primitives/Booleans;->a(ZZ)I

    move-result v0

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 629
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 622
    check-cast p1, Lcom/google/glass/voice/InputMode;

    check-cast p2, Lcom/google/glass/voice/InputMode;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/VoiceMessageController$6;->compare(Lcom/google/glass/voice/InputMode;Lcom/google/glass/voice/InputMode;)I

    move-result v0

    return v0
.end method
