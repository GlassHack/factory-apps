.class public Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    invoke-direct {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;-><init>()V

    sput-object v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->instance:Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->instance:Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider$1;-><init>(Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    return-object v0
.end method
