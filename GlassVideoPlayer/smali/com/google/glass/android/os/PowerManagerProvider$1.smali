.class Lcom/google/glass/android/os/PowerManagerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/os/PowerManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/os/PowerManagerProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->this$0:Lcom/google/glass/android/os/PowerManagerProvider;

    iput-object p2, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/os/PowerManager;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "null context"

    invoke-static {v0, v1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "power"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 36
    new-instance v1, Lcom/google/glass/android/os/PowerManagerImpl;

    invoke-direct {v1, v0}, Lcom/google/glass/android/os/PowerManagerImpl;-><init>(Landroid/os/PowerManager;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/android/os/PowerManagerProvider$1;->get()Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    return-object v0
.end method
