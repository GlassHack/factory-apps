.class public Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;
.super Lcom/google/glass/inject/Provider;
.source "GlassMenuGrammarLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;->instance:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;->instance:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grammarStore"    # Lcom/google/glass/voice/GrammarStore;
    .param p3, "launcher"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 248
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider$1;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    return-object v0
.end method
