.class public Lcom/google/glass/logging/FeedbackGeneratorProvider;
.super Lcom/google/glass/inject/Provider;
.source "FeedbackGeneratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/logging/FeedbackGenerator;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/logging/FeedbackGeneratorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/logging/FeedbackGeneratorProvider;

    invoke-direct {v0}, Lcom/google/glass/logging/FeedbackGeneratorProvider;-><init>()V

    sput-object v0, Lcom/google/glass/logging/FeedbackGeneratorProvider;->instance:Lcom/google/glass/logging/FeedbackGeneratorProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/logging/FeedbackGeneratorProvider;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/logging/FeedbackGeneratorProvider;->instance:Lcom/google/glass/logging/FeedbackGeneratorProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/FeedbackGenerator;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/logging/FeedbackGeneratorProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/FeedbackGeneratorProvider$1;-><init>(Lcom/google/glass/logging/FeedbackGeneratorProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/FeedbackGeneratorProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/FeedbackGenerator;

    return-object v0
.end method
