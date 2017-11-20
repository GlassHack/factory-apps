.class Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$grammarStore:Lcom/google/glass/voice/GrammarStore;

.field final synthetic val$launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$grammarStore:Lcom/google/glass/voice/GrammarStore;

    iput-object p4, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$grammarStore:Lcom/google/glass/voice/GrammarStore;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->val$launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;->get()Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    move-result-object v0

    return-object v0
.end method
