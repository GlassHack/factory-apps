.class Lcom/google/glass/voice/VoiceService$4;
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
        "Lcom/google/glass/voice/IVoiceServiceListener;",
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
    .line 372
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$4;->this$0:Lcom/google/glass/voice/VoiceService;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceService$4;->val$writer:Ljava/io/PrintWriter;

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
    .line 372
    check-cast p1, Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceService$4;->doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/voice/IVoiceServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$4;->val$writer:Ljava/io/PrintWriter;

    const-string v2, "  "

    invoke-interface {p1}, Lcom/google/glass/voice/IVoiceServiceListener;->getTag()Ljava/lang/String;

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

    .line 376
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
