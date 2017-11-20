.class Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "VoiceInputActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceInputActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleOpenEndedActionController"
.end annotation


# instance fields
.field private final inputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/InputMode;>;"
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;->inputModes:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public getInputModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;->inputModes:Ljava/util/List;

    return-object v0
.end method
