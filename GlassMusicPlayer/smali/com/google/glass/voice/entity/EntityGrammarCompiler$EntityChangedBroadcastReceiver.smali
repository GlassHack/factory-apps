.class Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V
    .locals 3

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 185
    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$200(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "entityChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;-><init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$300(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$100(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "The display names have not changed, so not recompiling grammars"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
