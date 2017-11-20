.class public final Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 1

    .prologue
    .line 62
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;-><init>(Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemLocationHelper;

    return-object v0
.end method
