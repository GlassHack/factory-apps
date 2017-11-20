.class Lcom/google/common/collect/ImmutableSet$Indexed$1;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$Indexed;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSet$Indexed;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$Indexed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ImmutableSet$Indexed;

    .prologue
    .line 354
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed$1;, "Lcom/google/common/collect/ImmutableSet$Indexed$1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed$1;, "Lcom/google/common/collect/ImmutableSet$Indexed$1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed$1;, "Lcom/google/common/collect/ImmutableSet$Indexed$1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Indexed;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 367
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed$1;, "Lcom/google/common/collect/ImmutableSet$Indexed$1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Indexed;->size()I

    move-result v0

    return v0
.end method
