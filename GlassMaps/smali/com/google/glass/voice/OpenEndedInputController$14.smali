.class Lcom/google/glass/voice/OpenEndedInputController$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/network/SpeechLevelSource;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$14;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$14;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3200(Lcom/google/glass/voice/OpenEndedInputController;)I

    move-result v0

    return v0
.end method
