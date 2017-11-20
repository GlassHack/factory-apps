.class Lcom/google/glass/voice/MirrorInvocationController$2;
.super Ljava/lang/Object;
.source "MirrorInvocationController.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/MirrorInvocationController;->getInputModes()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MirrorInvocationController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MirrorInvocationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/MirrorInvocationController;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/voice/MirrorInvocationController$2;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController$2;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-static {v0}, Lcom/google/glass/voice/MirrorInvocationController;->access$000(Lcom/google/glass/voice/MirrorInvocationController;)V

    .line 140
    :cond_0
    return-void
.end method
