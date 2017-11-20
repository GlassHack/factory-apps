.class Lcom/google/glass/browser/ClutchHelper$1;
.super Ljava/lang/Object;
.source "ClutchHelper.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/ClutchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/ClutchHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/ClutchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/ClutchHelper;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/browser/ClutchHelper$1;->this$0:Lcom/google/glass/browser/ClutchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/browser/ClutchHelper$1;->apply(Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/Void;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/Void;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper$1;->this$0:Lcom/google/glass/browser/ClutchHelper;

    invoke-static {v0}, Lcom/google/glass/browser/ClutchHelper;->access$000(Lcom/google/glass/browser/ClutchHelper;)Z

    move-result v0

    return v0
.end method
