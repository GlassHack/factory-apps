.class Lcom/google/android/speech/embedded/Greco3DataManager$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$1;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$1;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourceListAndNotifyCallback()V

    .line 218
    return-void
.end method
