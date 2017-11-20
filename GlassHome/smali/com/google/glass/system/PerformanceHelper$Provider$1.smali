.class Lcom/google/glass/system/PerformanceHelper$Provider$1;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/system/PerformanceHelper$Provider;->get()Lcom/google/glass/system/PerformanceHelper;
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
        "Lcom/google/glass/system/PerformanceHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/system/PerformanceHelper$Provider;


# direct methods
.method constructor <init>(Lcom/google/glass/system/PerformanceHelper$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/system/PerformanceHelper$Provider;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/glass/system/PerformanceHelper$Provider$1;->this$0:Lcom/google/glass/system/PerformanceHelper$Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/system/PerformanceHelper;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/google/glass/system/PerformanceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/system/PerformanceHelper;-><init>(Lcom/google/glass/system/PerformanceHelper$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/glass/system/PerformanceHelper$Provider$1;->get()Lcom/google/glass/system/PerformanceHelper;

    move-result-object v0

    return-object v0
.end method
