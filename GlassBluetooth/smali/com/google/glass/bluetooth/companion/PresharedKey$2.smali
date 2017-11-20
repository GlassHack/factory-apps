.class Lcom/google/glass/bluetooth/companion/PresharedKey$2;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "PresharedKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/PresharedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/PresharedKey;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/PresharedKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/PresharedKey;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PresharedKey$2;->this$0:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 70
    invoke-static {}, Lcom/google/glass/bluetooth/companion/PresharedKey;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Error fetching key from server: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/bluetooth/companion/PresharedKey;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got successful response from server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PresharedKey$2;->this$0:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->getKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/companion/PresharedKey;->access$102(Lcom/google/glass/bluetooth/companion/PresharedKey;[B)[B

    .line 65
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PresharedKey$2;->this$0:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/PresharedKey;->access$200(Lcom/google/glass/bluetooth/companion/PresharedKey;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/bluetooth/companion/PresharedKey$2;->onSuccess(Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;)V

    return-void
.end method
