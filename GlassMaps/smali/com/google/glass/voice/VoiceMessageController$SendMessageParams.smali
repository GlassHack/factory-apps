.class Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final isReplyAll:Z

.field final messageType:I

.field final messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

.field final replyToId:Ljava/lang/String;

.field final toId:Ljava/lang/String;

.field final toName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messageType:I

    .line 125
    iput-object p2, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toId:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toName:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->replyToId:Ljava/lang/String;

    .line 128
    iput-boolean p5, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->isReplyAll:Z

    .line 129
    iput-object p6, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 130
    return-void
.end method


# virtual methods
.method public getMessagingPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-object v0
.end method
