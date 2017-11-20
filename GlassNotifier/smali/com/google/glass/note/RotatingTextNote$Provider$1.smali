.class Lcom/google/glass/note/RotatingTextNote$Provider$1;
.super Ljava/lang/Object;
.source "RotatingTextNote.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/note/RotatingTextNote$Provider;->get(Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)Lcom/google/glass/note/RotatingTextNote;
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
        "Lcom/google/glass/note/RotatingTextNote;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$hideBackground:Z

.field final synthetic val$textsAndDurations:Lcom/google/common/collect/ImmutableList;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/note/RotatingTextNote$Provider;Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/note/RotatingTextNote$Provider;

    .prologue
    .line 51
    iput-object p2, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$hideBackground:Z

    iput-object p4, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$textsAndDurations:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/note/RotatingTextNote;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/note/RotatingTextNote;

    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$hideBackground:Z

    iget-object v3, p0, Lcom/google/glass/note/RotatingTextNote$Provider$1;->val$textsAndDurations:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/note/RotatingTextNote;-><init>(Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/glass/note/RotatingTextNote$Provider$1;->get()Lcom/google/glass/note/RotatingTextNote;

    move-result-object v0

    return-object v0
.end method
