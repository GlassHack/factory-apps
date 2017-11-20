.class Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$3;
.super Ljava/lang/Object;
.source "GlassMenuGrammarLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadGrammars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->blockingReloadGrammars()V

    .line 92
    return-void
.end method
