.class Lcom/google/glass/lockrecovery/FetchCodeActivity$3;
.super Ljava/lang/Object;
.source "FetchCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/lockrecovery/FetchCodeActivity;->onSuccess(Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

.field final synthetic val$response:Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    iput-object p2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;->val$response:Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$000(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;->val$response:Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->getLockCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->store(J)V

    .line 216
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Recovery code stored."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method
