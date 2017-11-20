.class public abstract Lcom/google/glass/voice/GrammarLoader;
.super Ljava/lang/Object;
.source "GrammarLoader.java"


# instance fields
.field private final grammarStore:Lcom/google/glass/voice/GrammarStore;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/GrammarStore;)V
    .locals 0
    .param p1, "grammarStore"    # Lcom/google/glass/voice/GrammarStore;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/glass/voice/GrammarLoader;->grammarStore:Lcom/google/glass/voice/GrammarStore;

    .line 11
    return-void
.end method


# virtual methods
.method protected final getGrammarStore()Lcom/google/glass/voice/GrammarStore;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/voice/GrammarLoader;->grammarStore:Lcom/google/glass/voice/GrammarStore;

    return-object v0
.end method

.method public abstract registerForUpdates()V
.end method

.method public abstract unregisterForUpdates()V
.end method
