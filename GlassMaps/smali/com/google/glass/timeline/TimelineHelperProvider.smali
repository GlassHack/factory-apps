.class public Lcom/google/glass/timeline/TimelineHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/timeline/TimelineHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/timeline/TimelineHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelperProvider;->instance:Lcom/google/glass/timeline/TimelineHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/google/glass/timeline/TimelineHelperProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/timeline/TimelineHelperProvider;->instance:Lcom/google/glass/timeline/TimelineHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/timeline/TimelineHelperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineHelperProvider$1;-><init>(Lcom/google/glass/timeline/TimelineHelperProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineHelperProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method
