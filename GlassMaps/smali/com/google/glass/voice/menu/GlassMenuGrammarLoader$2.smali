.class Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggerCacheUpdated()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadGrammars()V

    .line 74
    return-void
.end method
