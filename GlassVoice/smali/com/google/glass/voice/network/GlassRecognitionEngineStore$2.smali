.class Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;
.super Ljava/lang/Object;
.source "GlassRecognitionEngineStore.java"

# interfaces
.implements Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/GlassRecognitionEngineStore;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/GlassRecognitionEngineStore;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;->this$0:Lcom/google/glass/voice/network/GlassRecognitionEngineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;
    .locals 1
    .param p1, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 133
    new-instance v0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2$1;-><init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore$2;)V

    return-object v0
.end method
