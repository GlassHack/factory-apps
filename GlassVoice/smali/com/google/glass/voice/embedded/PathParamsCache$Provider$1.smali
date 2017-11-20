.class Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;
.super Ljava/lang/Object;
.source "PathParamsCache.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/PathParamsCache$Provider;->get(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/glass/voice/embedded/PathParamsCache;
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
        "Lcom/google/glass/voice/embedded/PathParamsCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/PathParamsCache$Provider;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->this$0:Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    iput-object p2, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/embedded/PathParamsCache;
    .locals 5

    .prologue
    .line 165
    new-instance v0, Lcom/google/glass/voice/embedded/PathParamsCache;

    invoke-static {}, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;->getInstance()Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->val$locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;->get(Ljava/util/Locale;)Lcom/google/glass/voice/embedded/GetPronsManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/embedded/PronDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->val$locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Lcom/google/glass/voice/embedded/PronDatabaseHelper;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/PathParamsCache;-><init>(Lcom/google/glass/voice/embedded/GetPronsManager;Lcom/google/glass/voice/embedded/PronDatabaseHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;->get()Lcom/google/glass/voice/embedded/PathParamsCache;

    move-result-object v0

    return-object v0
.end method
