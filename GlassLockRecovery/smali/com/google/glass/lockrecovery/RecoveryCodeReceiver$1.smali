.class Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;
.super Ljava/lang/Object;
.source "RecoveryCodeReceiver.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Lock recovery fetch cancelled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Lock recovery fetch failed with error code %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Lock recovery fetch successful."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;->this$0:Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->access$100(Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->getLockCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->store(J)V

    .line 40
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;->onSuccess(Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V

    return-void
.end method
