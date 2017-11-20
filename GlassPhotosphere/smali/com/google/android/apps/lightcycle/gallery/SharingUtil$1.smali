.class final Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;
.super Ljava/lang/Object;
.source "SharingUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->sharePano(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/ProgressCallback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;->val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;->val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onDone(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->access$000(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    return-void
.end method
