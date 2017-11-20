.class Lcom/google/glass/app/GlassApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication$3;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/PiiHasher;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/glass/logging/PiiHasher;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication$3;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {v0, v1}, Lcom/google/glass/logging/PiiHasher;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication$3;->get()Lcom/google/glass/logging/PiiHasher;

    move-result-object v0

    return-object v0
.end method
