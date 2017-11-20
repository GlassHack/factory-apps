.class Lcom/google/android/speech/RecognitionState$1$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "RecognitionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/RecognitionState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/speech/RecognitionState$1;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/RecognitionState$1;Ljava/lang/String;[I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/speech/RecognitionState$1$1;->this$1:Lcom/google/android/speech/RecognitionState$1;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState$1$1;->this$1:Lcom/google/android/speech/RecognitionState$1;

    iget-object v0, v0, Lcom/google/android/speech/RecognitionState$1;->this$0:Lcom/google/android/speech/RecognitionState;

    invoke-virtual {v0}, Lcom/google/android/speech/RecognitionState;->handlePrimaryEngineTimeout()V

    .line 337
    return-void
.end method
