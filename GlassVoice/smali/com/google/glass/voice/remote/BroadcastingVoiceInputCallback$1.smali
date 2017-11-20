.class Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;
.super Ljava/lang/Object;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/util/remote/RemoteCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/remote/RemoteCallbackOperation",
        "<",
        "Lcom/google/glass/voice/network/IVoiceInputCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field final synthetic val$inputEvent:Lcom/google/glass/voice/network/OpenEndedInputEvent;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;->val$inputEvent:Lcom/google/glass/voice/network/OpenEndedInputEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;->val$inputEvent:Lcom/google/glass/voice/network/OpenEndedInputEvent;

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback;->receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 53
    return-void
.end method
