.class public Lcom/google/glass/widget/GlassTipsManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/widget/GlassTipsManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/widget/GlassTipsManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/widget/GlassTipsManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/widget/GlassTipsManagerProvider;->instance:Lcom/google/glass/widget/GlassTipsManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/widget/GlassTipsManagerProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/widget/GlassTipsManagerProvider;->instance:Lcom/google/glass/widget/GlassTipsManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTipsManager;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/widget/GlassTipsManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/widget/GlassTipsManagerProvider$1;-><init>(Lcom/google/glass/widget/GlassTipsManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/GlassTipsManagerProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassTipsManager;

    return-object v0
.end method
