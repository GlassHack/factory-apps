.class Lcom/google/glass/voice/MirrorInvocationController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MirrorInvocationController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MirrorInvocationController;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/voice/MirrorInvocationController$1;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputModeChanged(Lcom/google/glass/voice/InputMode;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController$1;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    iget-object v0, v0, Lcom/google/glass/voice/MirrorInvocationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->header:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method
