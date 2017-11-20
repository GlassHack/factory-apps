.class Lcom/google/android/search/core/hotword/HotwordDataManager$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "HotwordDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/search/core/hotword/HotwordDataManager;->loadMicroHotwordResources(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

.field final synthetic val$locale:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/google/android/search/core/hotword/HotwordDataManager;Ljava/lang/String;[ILjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$1;->this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

    iput-object p4, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$1;->val$locale:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$1;->this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$1;->val$locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/search/core/hotword/HotwordDataManager;->loadResourcesAndNotifyCallback(Ljava/lang/String;)V

    .line 104
    return-void
.end method
