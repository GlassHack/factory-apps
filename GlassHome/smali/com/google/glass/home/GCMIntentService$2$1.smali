.class Lcom/google/glass/home/GCMIntentService$2$1;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/GCMIntentService$2;->onPostExecute(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/GCMIntentService$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/GCMIntentService$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/GCMIntentService$2;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/glass/home/GCMIntentService$2$1;->this$0:Lcom/google/glass/home/GCMIntentService$2;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 274
    sget-object v0, Lcom/google/glass/home/GCMIntentService$3;->$SwitchMap$com$google$glass$net$ProtoRequestDispatcher$ErrorCode:[I

    invoke-virtual {p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/GCMIntentService$2$1;->this$0:Lcom/google/glass/home/GCMIntentService$2;

    iget-object v0, v0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "retry_gcm_register"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/HomeApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
