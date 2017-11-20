.class Lcom/google/glass/voice/VoiceMessageController$6;
.super Ljava/lang/Object;
.source "VoiceMessageController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMessageController;->defaultMessageModeFirst()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/voice/InputMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMessageController;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$6;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/InputMode;Lcom/google/glass/voice/InputMode;)I
    .locals 6
    .param p1, "lhs"    # Lcom/google/glass/voice/InputMode;
    .param p2, "rhs"    # Lcom/google/glass/voice/InputMode;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 625
    invoke-static {p1}, Lcom/google/glass/voice/VoiceMessageController;->access$1600(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v4

    iget-object v0, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 626
    .local v0, "mpLeft":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-static {p2}, Lcom/google/glass/voice/VoiceMessageController;->access$1600(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v4

    iget-object v1, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 628
    .local v1, "mpRight":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    :goto_1
    invoke-static {v4, v2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v2

    return v2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

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
