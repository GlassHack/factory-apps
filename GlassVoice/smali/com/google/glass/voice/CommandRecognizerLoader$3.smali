.class Lcom/google/glass/voice/CommandRecognizerLoader$3;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/CommandRecognizerLoader;->unloadReplacedRecognizers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CommandRecognizerLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/CommandRecognizerLoader;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader$3;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader$3;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->access$000(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    .line 156
    return-void
.end method
