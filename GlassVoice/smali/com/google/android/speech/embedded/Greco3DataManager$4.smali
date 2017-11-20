.class Lcom/google/android/speech/embedded/Greco3DataManager$4;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

.field final synthetic val$postDelete:Ljava/lang/Runnable;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[ILjava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 546
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->val$postDelete:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 550
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->val$postDelete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUiThread:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$4;->val$postDelete:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 553
    :cond_0
    return-void
.end method
