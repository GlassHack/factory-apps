.class Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$2;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "MusicDetectorRecognitionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;


# direct methods
.method varargs constructor <init>(Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;Ljava/lang/String;[I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$2;->this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 172
    :try_start_0
    invoke-static {}, Lcom/google/audio/ears/MusicDetector;->close()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MusicDetectorRecognitionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on native close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
