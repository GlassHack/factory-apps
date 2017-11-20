.class Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2$1;
.super Ljava/lang/Object;
.source "GlassRecognitionEngineStore.java"

# interfaces
.implements Lcom/google/android/speech/embedded/GrecoEventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;->getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2$1;->this$1:Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognitionCompleted(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)V
    .locals 0
    .param p1, "recognizerLog"    # Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .prologue
    .line 141
    return-void
.end method

.method public recognitionStarted()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
