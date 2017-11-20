.class Lcom/google/glass/locale/RegionProvider$1;
.super Ljava/lang/Object;
.source "RegionProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;
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
        "Lcom/google/glass/locale/Region;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/locale/RegionProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/locale/RegionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/locale/RegionProvider;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/locale/RegionProvider$1;->this$0:Lcom/google/glass/locale/RegionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/locale/Region;
    .locals 4

    .prologue
    .line 33
    const-string v2, "ro.region"

    sget-object v3, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    invoke-virtual {v3}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "regionCodeString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/google/glass/locale/Region;->valueOf(Ljava/lang/String;)Lcom/google/glass/locale/Region;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 37
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/locale/RegionProvider$1;->get()Lcom/google/glass/locale/Region;

    move-result-object v0

    return-object v0
.end method
