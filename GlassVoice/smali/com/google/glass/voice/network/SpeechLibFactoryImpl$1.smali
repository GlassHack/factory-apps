.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/EngineSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->buildEngineSelector(Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 143
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    iget-boolean v1, v1, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseNetworkRecognitionEngine:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-static {v1}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->access$000(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Added network recognition engine"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-static {v1}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->access$000(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "In open ended embedded mode, did not add network recognition engine"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPrimaryEngine()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    iget-boolean v0, v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseNetworkRecognitionEngine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSecondaryEngine()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method
