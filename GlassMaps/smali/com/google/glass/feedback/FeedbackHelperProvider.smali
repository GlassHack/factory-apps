.class public Lcom/google/glass/feedback/FeedbackHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/feedback/FeedbackHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/feedback/FeedbackHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/feedback/FeedbackHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/feedback/FeedbackHelperProvider;->instance:Lcom/google/glass/feedback/FeedbackHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/feedback/FeedbackHelperProvider;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/feedback/FeedbackHelperProvider;->instance:Lcom/google/glass/feedback/FeedbackHelperProvider;

    return-object v0
.end method


# virtual methods
.method public from(Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/feedback/FeedbackHelper;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/feedback/FeedbackHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/feedback/FeedbackHelperProvider$1;-><init>(Lcom/google/glass/feedback/FeedbackHelperProvider;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/feedback/FeedbackHelperProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/feedback/FeedbackHelper;

    return-object v0
.end method
