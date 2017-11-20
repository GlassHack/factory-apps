.class Lcom/google/glass/android/media/AudioManagerProvider$1;
.super Ljava/lang/Object;
.source "AudioManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;
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
        "Lcom/google/glass/android/media/AudioManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/media/AudioManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/media/AudioManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/media/AudioManagerProvider;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/android/media/AudioManagerProvider$1;->this$0:Lcom/google/glass/android/media/AudioManagerProvider;

    iput-object p2, p0, Lcom/google/glass/android/media/AudioManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/media/AudioManager;
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/google/glass/android/media/AudioManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v2, "audio"

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 37
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v1, Lcom/google/glass/android/media/AudioManagerImpl;

    invoke-direct {v1, v0}, Lcom/google/glass/android/media/AudioManagerImpl;-><init>(Landroid/media/AudioManager;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/android/media/AudioManagerProvider$1;->get()Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
