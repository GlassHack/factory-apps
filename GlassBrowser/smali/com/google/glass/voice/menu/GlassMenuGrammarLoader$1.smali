.class Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;
.super Lcom/google/glass/voice/LocaleChangedReceiver;
.source "GlassMenuGrammarLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/LocaleChangedReceiver;-><init>(Lcom/google/glass/logging/FormattingLogger;)V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadGrammars()V

    .line 67
    return-void
.end method
