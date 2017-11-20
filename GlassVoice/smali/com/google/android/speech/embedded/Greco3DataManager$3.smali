.class Lcom/google/android/speech/embedded/Greco3DataManager$3;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->deleteLanguage(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

.field final synthetic val$postDelete:Ljava/lang/Runnable;

.field final synthetic val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$postDelete:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$postDelete:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method
