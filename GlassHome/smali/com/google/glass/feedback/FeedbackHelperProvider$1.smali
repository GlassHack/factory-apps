.class Lcom/google/glass/feedback/FeedbackHelperProvider$1;
.super Ljava/lang/Object;
.source "FeedbackHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/feedback/FeedbackHelperProvider;->from(Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/feedback/FeedbackHelper;
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
        "Lcom/google/glass/feedback/FeedbackHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/feedback/FeedbackHelperProvider;

.field final synthetic val$soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/feedback/FeedbackHelperProvider;Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/feedback/FeedbackHelperProvider;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/feedback/FeedbackHelperProvider$1;->this$0:Lcom/google/glass/feedback/FeedbackHelperProvider;

    iput-object p2, p0, Lcom/google/glass/feedback/FeedbackHelperProvider$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/feedback/FeedbackHelper;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/feedback/FeedbackHelper;

    iget-object v1, p0, Lcom/google/glass/feedback/FeedbackHelperProvider$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1}, Lcom/google/glass/feedback/FeedbackHelper;-><init>(Lcom/google/glass/sound/SoundManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/feedback/FeedbackHelperProvider$1;->get()Lcom/google/glass/feedback/FeedbackHelper;

    move-result-object v0

    return-object v0
.end method
