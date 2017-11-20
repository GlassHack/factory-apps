.class Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;
.super Ljava/lang/Object;
.source "BroadcastingVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$RemoteVoiceListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->onResampledAudioData([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field final synthetic val$buffer:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;[BII)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$buffer:[B

    iput p3, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$offset:I

    iput p4, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$length:I

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
    .line 38
    check-cast p1, Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/glass/voice/IVoiceServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$buffer:[B

    iget v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$offset:I

    iget v2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;->val$length:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/glass/voice/IVoiceServiceListener;->onResampledAudioData([BII)V

    .line 42
    return-void
.end method
