.class final Lcom/google/glass/tutorial/TutorialManager$1;
.super Ljava/lang/Object;
.source "TutorialManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/glass/tutorial/Tutorial;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/tutorial/Tutorial;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/glass/tutorial/Tutorial;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/google/glass/tutorial/Tutorial;->isVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/google/glass/tutorial/Tutorial;

    invoke-virtual {p0, p1}, Lcom/google/glass/tutorial/TutorialManager$1;->apply(Lcom/google/glass/tutorial/Tutorial;)Z

    move-result v0

    return v0
.end method
