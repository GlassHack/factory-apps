.class Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "NetworkRecognitionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/engine/NetworkRecognitionEngine;->scheduleRetry(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

.field final synthetic val$e:Lcom/google/android/shared/speech/exception/NetworkRecognizeException;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Ljava/lang/String;[ILcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    iput-object p4, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->val$e:Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->val$e:Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    invoke-static {v0, v1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->access$000(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    .line 151
    return-void
.end method
