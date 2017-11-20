.class Lcom/google/glass/android/content/ContentResolverProvider$1;
.super Ljava/lang/Object;
.source "ContentResolverProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/content/ContentResolverProvider;->from(Landroid/content/ContentResolver;)Lcom/google/glass/android/content/ContentResolver;
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
        "Lcom/google/glass/android/content/ContentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/glass/android/content/ContentResolverProvider;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/content/ContentResolverProvider;

    .prologue
    .line 34
    iput-object p2, p0, Lcom/google/glass/android/content/ContentResolverProvider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/content/ContentResolver;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/glass/android/content/ContentResolverImpl;

    iget-object v1, p0, Lcom/google/glass/android/content/ContentResolverProvider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/glass/android/content/ContentResolverImpl;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/glass/android/content/ContentResolverProvider$1;->get()Lcom/google/glass/android/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
