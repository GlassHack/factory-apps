.class Lcom/google/glass/android/os/PowerManagerProvider$1;
.super Ljava/lang/Object;
.source "PowerManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;
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
        "Lcom/google/glass/android/os/PowerManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/os/PowerManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/os/PowerManagerProvider;

    .prologue
    .line 29
    iput-object p2, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/os/PowerManager;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v2, "null context"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v2, "power"

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 35
    .local v0, "powerManager":Landroid/os/PowerManager;
    new-instance v1, Lcom/google/glass/android/os/PowerManagerImpl;

    invoke-direct {v1, v0}, Lcom/google/glass/android/os/PowerManagerImpl;-><init>(Landroid/os/PowerManager;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/android/os/PowerManagerProvider$1;->get()Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    return-object v0
.end method
