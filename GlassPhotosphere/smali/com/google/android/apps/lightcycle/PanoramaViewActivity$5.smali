.class Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;
.super Ljava/lang/Object;
.source "PanoramaViewActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->onImageLoadingError(I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 381
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->finish()V

    .line 385
    return-void
.end method
