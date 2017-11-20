.class Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;
.super Lcom/google/glass/voice/LocaleChangedReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/LocaleChangedReceiver;-><init>(Lcom/google/glass/logging/FormattingLogger;)V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$100(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V

    .line 105
    return-void
.end method
