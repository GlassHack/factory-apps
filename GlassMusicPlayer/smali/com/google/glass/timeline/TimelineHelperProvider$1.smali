.class Lcom/google/glass/timeline/TimelineHelperProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelperProvider;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelperProvider$1;->this$0:Lcom/google/glass/timeline/TimelineHelperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineHelperProvider$1;->get()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    return-object v0
.end method
