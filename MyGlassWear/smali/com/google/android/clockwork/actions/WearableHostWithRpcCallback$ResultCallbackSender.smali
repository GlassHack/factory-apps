.class Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;
.super Ljava/lang/Object;
.source "WearableHostWithRpcCallback.java"

# interfaces
.implements Lcom/google/android/clockwork/actions/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultCallbackSender"
.end annotation


# instance fields
.field private final mOriginalRpc:Lcom/google/android/gms/wearable/MessageEvent;

.field final synthetic this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 0
    .param p2, "originalRpc"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;->mOriginalRpc:Lcom/google/android/gms/wearable/MessageEvent;

    .line 285
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onError not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataMap;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;->this$0:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;->mOriginalRpc:Lcom/google/android/gms/wearable/MessageEvent;

    invoke-static {v0, p1, v1}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->access$100(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/MessageEvent;)V

    .line 292
    :cond_0
    return-void
.end method
