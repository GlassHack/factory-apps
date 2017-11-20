.class Lcom/google/android/pano/widget/ScrollAdapterView$2;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$800(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1051
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$2;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1054
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
