.class Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$2;
.super Ljava/lang/Object;
.source "MutedAppsList.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->syncOps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$2;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 1
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
    .line 239
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Lcom/google/android/gms/wearable/DataItem;>;"
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$2;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-static {v0, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->access$400(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 240
    return-void
.end method
