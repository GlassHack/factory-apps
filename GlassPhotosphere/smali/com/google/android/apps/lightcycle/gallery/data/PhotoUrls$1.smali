.class Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;
.super Ljava/lang/Object;
.source "PhotoUrls.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->getShortDogfoodUrl(Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortUrl"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->access$102(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 140
    return-void
.end method
