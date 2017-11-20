.class Lcom/google/glass/voice/VoiceAnnotationController$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationController;

.field final synthetic val$textToReturn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationController$3;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationController$3;->val$textToReturn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$3;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController$3;->val$textToReturn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationController;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 376
    return-void
.end method
