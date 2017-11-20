.class Lcom/google/glass/android/content/ContentResolverProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/content/ContentResolverProvider;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/glass/android/content/ContentResolverProvider;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/android/content/ContentResolverProvider$1;->this$0:Lcom/google/glass/android/content/ContentResolverProvider;

    iput-object p2, p0, Lcom/google/glass/android/content/ContentResolverProvider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/content/ContentResolver;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/android/content/ContentResolverImpl;

    iget-object v1, p0, Lcom/google/glass/android/content/ContentResolverProvider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/glass/android/content/ContentResolverImpl;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/android/content/ContentResolverProvider$1;->get()Lcom/google/glass/android/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
