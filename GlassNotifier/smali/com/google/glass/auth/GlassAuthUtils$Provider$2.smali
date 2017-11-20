.class final Lcom/google/glass/auth/GlassAuthUtils$Provider$2;
.super Ljava/lang/Object;
.source "GlassAuthUtils.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/GlassAuthUtils$Provider;->getSupplier(Landroid/content/Context;)Lcom/google/common/base/Supplier;
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
        "Lcom/google/glass/auth/AuthUtils;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/auth/GlassAuthUtils;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils$Provider;->getInstance()Lcom/google/glass/auth/GlassAuthUtils$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils$Provider$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/auth/GlassAuthUtils$Provider;->get(Landroid/content/Context;)Lcom/google/glass/auth/GlassAuthUtils;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils$Provider$2;->get()Lcom/google/glass/auth/GlassAuthUtils;

    move-result-object v0

    return-object v0
.end method
