.class Lcom/google/glass/maps/MapHelper$Provider$1;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/maps/MapHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
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
        "Lcom/google/glass/maps/MapHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/maps/MapHelper$Provider;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$Provider$1;->this$0:Lcom/google/glass/maps/MapHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/maps/MapHelper;
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 147
    new-instance v0, Lcom/google/glass/maps/MapHelper;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/MapHelper;-><init>(Landroid/content/Context;Lcom/google/glass/maps/MapHelper$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/glass/maps/MapHelper$Provider$1;->get()Lcom/google/glass/maps/MapHelper;

    move-result-object v0

    return-object v0
.end method
