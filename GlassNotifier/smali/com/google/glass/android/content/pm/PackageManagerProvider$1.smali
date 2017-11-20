.class Lcom/google/glass/android/content/pm/PackageManagerProvider$1;
.super Ljava/lang/Object;
.source "PackageManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/content/pm/PackageManagerProvider;->get(Landroid/content/Context;)Landroid/content/pm/PackageManager;
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
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/content/pm/PackageManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/content/pm/PackageManagerProvider;

    .prologue
    .line 29
    iput-object p2, p0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->get()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method
