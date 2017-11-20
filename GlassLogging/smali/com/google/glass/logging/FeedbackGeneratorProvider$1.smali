.class Lcom/google/glass/logging/FeedbackGeneratorProvider$1;
.super Ljava/lang/Object;
.source "FeedbackGeneratorProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackGeneratorProvider;->get()Lcom/google/glass/logging/FeedbackGenerator;
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
        "Lcom/google/glass/logging/FeedbackGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/FeedbackGeneratorProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackGeneratorProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/FeedbackGeneratorProvider;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackGeneratorProvider$1;->this$0:Lcom/google/glass/logging/FeedbackGeneratorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/FeedbackGenerator;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/glass/logging/FeedbackGenerator;

    invoke-direct {v0}, Lcom/google/glass/logging/FeedbackGenerator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackGeneratorProvider$1;->get()Lcom/google/glass/logging/FeedbackGenerator;

    move-result-object v0

    return-object v0
.end method
