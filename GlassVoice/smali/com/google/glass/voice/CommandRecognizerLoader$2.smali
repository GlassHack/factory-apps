.class Lcom/google/glass/voice/CommandRecognizerLoader$2;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/glass/voice/VoiceConfig;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CommandRecognizerLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/CommandRecognizerLoader;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader$2;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/Integer;
    .locals 1
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->hash(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader$2;->apply(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
