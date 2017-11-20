.class Lcom/google/android/speech/RecognizerImpl$2;
.super Ljava/lang/Object;
.source "RecognizerImpl.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/RecognizerImpl;->startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/RecognizerImpl;

.field final synthetic val$audio:[B


# direct methods
.method constructor <init>(Lcom/google/android/speech/RecognizerImpl;[B)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/speech/RecognizerImpl$2;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iput-object p2, p0, Lcom/google/android/speech/RecognizerImpl$2;->val$audio:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl$2;->val$audio:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
