.class Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;
.super Ljava/lang/Object;
.source "WearableHostWithRpcCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/clockwork/actions/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    iput-object p2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;->val$uuid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->access$000(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;I)V

    .line 173
    return-void
.end method
