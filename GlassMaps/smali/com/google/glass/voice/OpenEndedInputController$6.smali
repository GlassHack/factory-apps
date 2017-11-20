.class Lcom/google/glass/voice/OpenEndedInputController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$6;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 461
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$6;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 462
    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$3800(Lcom/google/glass/voice/OpenEndedInputController;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$6;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 463
    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$3900(Lcom/google/glass/voice/OpenEndedInputController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "trigger"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$6;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 464
    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$4000(Lcom/google/glass/voice/OpenEndedInputController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 461
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$6;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$4100(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 466
    return-void
.end method
