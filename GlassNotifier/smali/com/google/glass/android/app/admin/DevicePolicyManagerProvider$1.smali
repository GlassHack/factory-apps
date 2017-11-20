.class Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->get(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
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
        "Landroid/app/admin/DevicePolicyManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;

    .prologue
    .line 30
    iput-object p2, p0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;->get()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method
