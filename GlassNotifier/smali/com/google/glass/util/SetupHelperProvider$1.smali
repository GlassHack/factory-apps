.class Lcom/google/glass/util/SetupHelperProvider$1;
.super Ljava/lang/Object;
.source "SetupHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SetupHelperProvider;-><init>()V
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
        "Lcom/google/glass/util/SetupHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/util/SetupHelperProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/SetupHelperProvider;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/SetupHelper;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/util/SetupHelper;

    invoke-direct {v0}, Lcom/google/glass/util/SetupHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/util/SetupHelperProvider$1;->get()Lcom/google/glass/util/SetupHelper;

    move-result-object v0

    return-object v0
.end method
