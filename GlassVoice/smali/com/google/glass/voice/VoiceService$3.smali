.class Lcom/google/glass/voice/VoiceService$3;
.super Ljava/lang/Object;
.source "VoiceService.java"

# interfaces
.implements Lcom/google/glass/util/remote/RemoteCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;

.field final synthetic val$writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceService;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$3;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$3;->val$writer:Ljava/io/PrintWriter;

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
    .line 364
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceService$3;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$3;->val$writer:Ljava/io/PrintWriter;

    const-string v2, "  "

    invoke-interface {p1}, Lcom/google/glass/voice/network/IVoiceInputCallback;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
