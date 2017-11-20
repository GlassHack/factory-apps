.class Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "GlassMenuGrammarLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V
    .locals 3

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "entityChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
    .param p2, "x1"    # Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadGrammars()V

    .line 228
    return-void
.end method
