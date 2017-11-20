.class Lcom/google/glass/timeline/TimelineHelperProvider$1;
.super Ljava/lang/Object;
.source "TimelineHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelperProvider;->get()Lcom/google/glass/timeline/TimelineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/timeline/TimelineHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelperProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineHelperProvider;

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
