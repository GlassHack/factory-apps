.class Lcom/google/glass/companion/CompanionStateHelper$Provider$1;
.super Ljava/lang/Object;
.source "CompanionStateHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/CompanionStateHelper$Provider;->get()Lcom/google/glass/companion/CompanionStateHelper;
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
        "Lcom/google/glass/companion/CompanionStateHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/companion/CompanionStateHelper$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/CompanionStateHelper$Provider;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/companion/CompanionStateHelper;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/glass/companion/CompanionStateHelper;

    invoke-direct {v0}, Lcom/google/glass/companion/CompanionStateHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/glass/companion/CompanionStateHelper$Provider$1;->get()Lcom/google/glass/companion/CompanionStateHelper;

    move-result-object v0

    return-object v0
.end method
