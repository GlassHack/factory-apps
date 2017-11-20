.class Lcom/google/android/speech/embedded/Greco3EngineManager$2;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "Greco3EngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3EngineManager;->delete(Ljava/io/File;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field final synthetic val$completionCb:Ljava/lang/Runnable;

.field final synthetic val$force:Z

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/lang/String;[ILjava/io/File;ZLjava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$path:Ljava/io/File;

    iput-boolean p5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$force:Z

    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$completionCb:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$path:Ljava/io/File;

    iget-boolean v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$force:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;->doResourceDelete(Ljava/io/File;Z)V

    .line 238
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$completionCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$completionCb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 241
    :cond_0
    return-void
.end method
