.class Lcom/google/glass/android/content/pm/PackageManagerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/content/pm/PackageManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/content/pm/PackageManagerProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->this$0:Lcom/google/glass/android/content/pm/PackageManagerProvider;

    iput-object p2, p0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;->get()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method
