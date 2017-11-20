.class Lcom/google/android/wearable/app/PeerConnectionListener$1;
.super Ljava/lang/Object;
.source "PeerConnectionListener.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/app/PeerConnectionListener;->setSetupData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/PeerConnectionListener;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/PeerConnectionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/PeerConnectionListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/wearable/app/PeerConnectionListener$1;->this$0:Lcom/google/android/wearable/app/PeerConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Lcom/google/android/gms/wearable/DataItem;>;"
    invoke-static {}, Lcom/google/android/wearable/app/PeerConnectionListener;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "done setting setup DataItem"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method
